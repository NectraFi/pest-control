param(
  [string]$Token,
  [string]$Otp
)

$ErrorActionPreference = "Stop"

function Prompt-ForToken {
  Write-Host "Enter your npm access token (starting with 'npm_'):" -ForegroundColor Cyan
  $secure = Read-Host -AsSecureString
  $bstr   = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure)
  try {
    return [Runtime.InteropServices.Marshal]::PtrToStringBSTR($bstr)
  }
  finally {
    if ($bstr -ne [IntPtr]::Zero) {
      [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($bstr)
    }
  }
}

try {
  # 1) Resolve token
  if (-not $Token -or [string]::IsNullOrWhiteSpace($Token)) {
    if ($env:NPM_TOKEN -and $env:NPM_TOKEN.Trim().Length -gt 0) {
      $Token = $env:NPM_TOKEN
    } else {
      $Token = Prompt-ForToken
    }
  }

  if (-not $Token -or [string]::IsNullOrWhiteSpace($Token)) {
    throw "No token provided. Aborting."
  }

  # 2) Set env var for this session only
  $env:NPM_TOKEN = $Token

  # 3) Prepare a temporary .npmrc that targets the public registry and embeds the token
  # Resolve project root as parent of scripts folder so the script can be run from anywhere
  $ProjectRoot = Split-Path $PSScriptRoot -Parent
  $userConfig = Join-Path $PSScriptRoot ".npmrc.publish"
  # Backup project .npmrc if it exists (it may redirect @jxrstudios to GitHub Packages)
  $projectNpmrc = Join-Path $ProjectRoot ".npmrc"
  $projectNpmrcBackup = Join-Path $ProjectRoot ".npmrc.github.bak"
  $projectNpmrcWasBackedUp = $false
  if (Test-Path $projectNpmrc) {
    Move-Item -Path $projectNpmrc -Destination $projectNpmrcBackup -Force
    $projectNpmrcWasBackedUp = $true
    Write-Host "Temporarily moved project .npmrc to $projectNpmrcBackup to avoid scope override" -ForegroundColor DarkYellow
  }
  $npmrcContent = @"
registry=https://registry.npmjs.org/
//registry.npmjs.org/:_authToken=$Token
@jxrstudios:registry=https://registry.npmjs.org/
"@
  Set-Content -Path $userConfig -Value $npmrcContent -Encoding ASCII

  Write-Host "Created temporary npm userconfig at $userConfig" -ForegroundColor Green
  Write-Host "Using registry: https://registry.npmjs.org/" -ForegroundColor DarkCyan

  # 4) Sanity checks (look in project root)
  if (-not (Test-Path (Join-Path $ProjectRoot "package.json"))) {
    throw "No package.json found in $ProjectRoot. Ensure the script resides in 'scripts' under your project."
  }

  Write-Host "Verifying npm authentication..." -ForegroundColor Yellow
  Push-Location $ProjectRoot
  try {
    npm whoami --userconfig "$userConfig" --registry=https://registry.npmjs.org/ | Out-Host
  }
  finally {
    Pop-Location
  }

  # 5) Publish
  Write-Host "Publishing package to npm (public)..." -ForegroundColor Yellow
  $otpToUse = $Otp
  if (-not $otpToUse) {
    $otpToUse = Read-Host "If your token requires 2FA, enter the 6-digit OTP now (or press Enter to skip)"
  }

  $publishArgs = @("publish", "--userconfig", $userConfig, "--access", "public")
  if ($otpToUse -and $otpToUse.Trim().Length -gt 0) {
    $publishArgs += @("--otp", $otpToUse)
  }

  # Ensure npm runs from the project root so it picks up the correct package.json
Push-Location $ProjectRoot
try {
  # Resolve npm command explicitly to the Windows shim to avoid arg parsing issues
  $npmCmd = (Get-Command npm.cmd -ErrorAction Stop).Source
  & $npmCmd @publishArgs | Out-Host
}
finally {
  Pop-Location
}

  Write-Host "Publish complete." -ForegroundColor Green
}
catch {
  Write-Host "❌ Error: $($_.Exception.Message)" -ForegroundColor Red
  if ($_.ScriptStackTrace) { Write-Host $_.ScriptStackTrace -ForegroundColor DarkGray }
  exit 1
}
finally {
  # Cleanup: remove temp userconfig and unset the env var for safety
  try {
    if (Test-Path (Join-Path $PSScriptRoot ".npmrc.publish")) {
      Remove-Item (Join-Path $PSScriptRoot ".npmrc.publish") -Force -ErrorAction SilentlyContinue
      Write-Host "Cleaned up temporary userconfig" -ForegroundColor DarkGray
    }
    if ($projectNpmrcWasBackedUp -and (Test-Path $projectNpmrcBackup)) {
      # Restore original project .npmrc
      Move-Item -Path $projectNpmrcBackup -Destination $projectNpmrc -Force
      Write-Host "Restored project .npmrc from backup" -ForegroundColor DarkGray
    }
  } catch {}
  try { Remove-Item Env:NPM_TOKEN -ErrorAction SilentlyContinue } catch {}
}
