```
  ██████╗ ███████╗███████╗████████╗     ██████╗██████╗ ██████╗ 
  ██╔══██╗██╔════╝██╔════╝╚══██╔══╝    ██╔════╝██╔══██╗██╔══██╗
  ██████╔╝█████╗  ███████╗   ██║       ██║     ██████╔╝██████╔╝
  ██╔═══╝ ██╔══╝  ╚════██║   ██║       ██║     ██╔══██╗██╔═══╝ 
  ██║     ███████╗███████║   ██║       ╚██████╗██║  ██║██║     
  ╚═╝     ╚══════╝╚══════╝   ╚═╝        ╚═════╝╚═╝  ╚═╝╚═╝     

  🚀 NPM Malware Extermination Tool v1.1.0
  🔒 BATTLE-TESTED • ENTERPRISE-GRADE • BOT-RESISTANT
  🛡️  AUTHENTIC SECURITY TOOL - VERIFIED INTEGRITY

# 🚨 Pest Control - Emergency NPM Malware Exterminator

> ⚠️ A zero-dependency, cross-platform CLI to exterminate the ansi-regex supply-chain attack and related variants.

## 🚀 10-Second Fix

```bash
# Run this in your project root. It does everything.
npx @nectrafi/pest-control
```

## 🔥 The Crisis

The npm ecosystem has seen malicious versions of core color utilities:
- `ansi-regex`, `ansi-styles`
- `color-name`, `color-convert`, `color-string`
- Other related utilities

These exfiltrate secrets (env vars, CI tokens) and can persist via nested deps and lockfiles.

## 🛡️ What This Tool Does (8-Phase Protocol)

1. SCAN — Comprehensive scan (including deep nested checks) with strict version verification
2. EXTERMINATE — Uninstall detected threats and known variants
3. FIRE BLAZE — Nuclear deletion of `node_modules`
4. COCKROACH EGGS — Precautionary lockfile removal (package-lock.json, yarn.lock, pnpm-lock.yaml, npm-shrinkwrap.json)
5. SHIELD — Apply safe version enforcement to `package.json`:
   - npm: `overrides`
   - Yarn: `resolutions`
   - pnpm: `pnpm.overrides`
   - npm-only preinstall guard: `npx --yes npm-force-resolutions` (gated to npm UA)
6. REBUILD — Secure reinstall with blacklisting, with persistent visual spinners
7. VERIFY — Final verification scan(s) and compact dependency version audit
8. CERTIFY — Regenerate lockfile for your PM and issue `SECURITY_CERTIFICATE.txt`

## 💻 Usage

```bash
npx @nectrafi/pest-control
```

The tool runs fully unattended, with persistent spinners and phase labels so it never looks “frozen.”

## ✅ When Nothing Is Detected

You’ll see “No malware detected.” Pest Control still performs full cleanup (including precautionary lockfile removal and secure reinstall) to eliminate any chance of undetected persistence.

## 🔒 Enforcement Across Package Managers

- npm — `package.json#overrides` and a gated `preinstall` that runs `npm-force-resolutions` only for npm
- Yarn — `package.json#resolutions` is added so Yarn enforces the same safe versions
- pnpm — `package.json#pnpm.overrides` pins safe versions
- After success, the lockfile is regenerated for your detected package manager

## 🧾 Certification Outputs

- `package.json`: a `pestControl` block with certificate ID, timestamp, and status
- `package-lock.json`: a `pestControl` block reflecting enforced safe versions (npm)
- `SECURITY_CERTIFICATE.txt`: human-readable certificate summary

## 🤔 Why Trust This?

- Zero Dependencies — Native Node.js only
- Transparent — Simple, readable code
- Safe Defaults — Focused file ops with clear logs and backups via lockfile regen

## 📚 Resources

- Official advisory: https://github.com/advisories/GHSA-jvhh-2m83-6w29
- Socket.dev blog: https://socket.dev/blog/ansi-regex-malware

---

Community-driven. Use at your own risk. Issues and PRs welcome.

## ✨ Key Features

- Lightning-fast, zero-dependency Node.js CLI (no install required via `npx`)
- Full 8-phase cleanup for `ansi-regex` and related supply-chain malware
- Cross-PM enforcement: npm `overrides`, Yarn `resolutions`, pnpm `pnpm.overrides`
- npm-only preinstall guard: `npx --yes npm-force-resolutions` (auto-skips Yarn/pnpm)
- Precautionary lockfile removal + PM-aware lockfile regeneration
- Persistent spinners with phase labels so the CLI never looks frozen
- Final certification: `SECURITY_CERTIFICATE.txt` and metadata in JSON files
- Windows, macOS, and Linux support (CMD/PowerShell/Bash)

## 🧩 Supported Package Managers & Platforms

- npm (overrides, gated preinstall guard, package-lock regeneration)
- Yarn (resolutions, yarn.lock re-resolution)
- pnpm (pnpm.overrides, pnpm-lock.yaml regeneration)
- Operating systems: Windows, macOS, Linux

## ⚙️ CI/CD Integration

Add a pre-step to run Pest Control in your pipeline before install/build:

```yaml
steps:
  - name: Pest Control - Exterminate supply chain malware
    run: npx @nectrafi/pest-control
```

For npm users, the tool also injects a gated `preinstall` script that runs `npm-force-resolutions` only when the user agent is npm, ensuring lockfile alignment prior to `npm install`.

## 🧰 Troubleshooting

- Spinner looks static in logs: spinners update the same line; the CLI is active. You can increase verbosity by running in a local terminal.
- Lockfile regen fails (missing PM): The tool continues and logs a warning. Install the respective PM and rerun Pest Control.
- "Unknown version" warnings: The package is not in the known safe/malware list; overrides keep you safe, but consider auditing that package.

## ❓ FAQ

- Does this delete my code?  
  No. It deletes `node_modules` and lockfiles, then applies safe overrides/resolutions, and performs a clean reinstall.

- Why remove lockfiles even when nothing is detected?  
  Lockfiles can preserve hidden dependency trees. We remove them as a precaution and then regenerate with shields enforced.

- Will this break Yarn or pnpm?  
  No. The npm preinstall guard is gated to npm user agents. Yarn/pnpm users get native enforcement via `resolutions`/`pnpm.overrides` without the preinstall step.

- Can I run it on CI safely?  
  Yes. It is zero-dependency and uses native Node modules. Add `npx pest-control` before your install.

## 🔐 Source URL Enforcement (Optional)

Pest Control can verify its source repository via a signed JWT before running. This helps ensure you’re using the authentic tool.

Set these in your `.env` (already gitignored):

```ini
GITHUB_REPO_URL=https://github.com/NectraFi/pest-control.git
JWT_SECRET=change-me
SOURCE_JWT=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9....
```

Claims validated (HS256):
- `repo`: must match `GITHUB_REPO_URL` (with `.git` suffix tolerated)
- `owner`: must be `NectraFi`
- `domain`: must be `github.com`
- Optional `exp` / `nbf` are honored

Quick token generator using Node (PowerShell):

```powershell
$secret = "change-me";
$payload = @{repo='https://github.com/NectraFi/pest-control'; owner='NectraFi'; domain='github.com'; exp=[math]::Floor([DateTimeOffset]::UtcNow.ToUnixTimeSeconds()+3600)} | ConvertTo-Json -Compress;
$head = '{"alg":"HS256","typ":"JWT"}';
function b64url($s){
  $b=[System.Text.Encoding]::UTF8.GetBytes($s);
  [Convert]::ToBase64String($b).TrimEnd('=').Replace('+','-').Replace('/','_')
}
$h=b64url $head; $p=b64url $payload;
$sig = [Convert]::ToBase64String((New-Object System.Security.Cryptography.HMACSHA256([Text.Encoding]::UTF8.GetBytes($secret))).ComputeHash([Text.Encoding]::UTF8.GetBytes("$h.$p"))).TrimEnd('=').Replace('+','-').Replace('/','_');
"$h.$p.$sig"
```

Note: If `SOURCE_JWT` or `JWT_SECRET` are not set, the tool proceeds with a warning (enforcement optional). Keep `.env` private.

## Keywords (SEO)

ansi-regex malware removal, npm supply chain attack cleanup, remove malicious npm package, npm overrides safe versions, Yarn resolutions security, pnpm overrides malware, delete lockfile package-lock yarn.lock pnpm-lock, node_modules cleanup, npx security tool, Windows macOS Linux CLI, npm-force-resolutions preinstall, secure reinstall, malware exfiltration prevention
