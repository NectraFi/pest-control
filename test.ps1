# Test script for pest-control (Windows)
# This script creates a test environment and runs the tool

Write-Host "🚀 Setting up test environment..." -ForegroundColor Cyan
$testDir = "test-project"
New-Item -ItemType Directory -Force -Path $testDir | Out-Null
Set-Location $testDir

# Create a package.json with a vulnerable dependency
@'
{
  "name": "test-pest-control",
  "version": "1.0.0",
  "description": "Test project for @jxrstudios/pest-control",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "dependencies": {
    "ansi-regex": "^6.0.1"
  },
  "author": "",
  "license": "ISC"
}
'@ | Out-File -FilePath "package.json" -Encoding utf8

Write-Host "📦 Installing dependencies..." -ForegroundColor Cyan
npm install --silent

Write-Host "🔍 Running pest-control..." -ForegroundColor Cyan
npx @jxrstudios/pest-control run

Write-Host "`n✅ Test complete!" -ForegroundColor Green

# Cleanup (commented out for safety)
# Write-Host "`n🧹 Cleaning up..." -ForegroundColor Cyan
# Set-Location ..
# Remove-Item -Recurse -Force $testDir
