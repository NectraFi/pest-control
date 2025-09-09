<div align="center">

```
██████╗ ███████╗███████╗████████╗     ██████╗██████╗ ██████╗ 
██╔══██╗██╔════╝██╔════╝╚══██╔══╝    ██╔════╝██╔══██╗██╔══██╗
██████╔╝█████╗  ███████╗   ██║       ██║     ██████╔╝██████╔╝
██╔═══╝ ██╔══╝  ╚════██║   ██║       ██║     ██╔══██╗██╔═══╝ 
██║     ███████╗███████║   ██║       ╚██████╗██║  ██║██║     
╚═╝     ╚══════╝╚══════╝   ╚═╝        ╚═════╝╚═╝  ╚═╝╚═╝     

💀 NPM Malware Extermination Tool v1.1.6
BATTLE-TESTED • ENTERPRISE-GRADE • BOT-RESISTANT
AUTHENTIC SECURITY TOOL - VERIFIED INTEGRITY
```

</div>

---

# Pest Control - Emergency NPM Malware Exterminator

> A zero-dependency, cross-platform CLI to exterminate the ansi-regex supply-chain attack and related variants.

## 🚀 10-Second Fix

```bash
# Run this in your project root. It does everything.
npx @jxrstudios/pest-control
```

## 🔥 The Crisis

> **WARNING:** The npm ecosystem is under attack! Malicious versions of widely-used color utilities have been detected:

| Package | Status | Impact |
|---------|--------|--------|
| `ansi-regex` | ⚠️ **Compromised** | Critical |
| `ansi-styles` | ⚠️ **Compromised** | Critical |
| `color-name` | ⚠️ **At Risk** | High |
| `color-convert` | ⚠️ **At Risk** | High |
| `color-string` | ⚠️ **At Risk** | High |

> 💡 **Note:** These packages are used by thousands of projects and their dependencies. Even if you don't use them directly, your project might be at risk!

These exfiltrate secrets (env vars, CI tokens) and can persist via nested deps and lockfiles.

## 🛡️ 8-Phase Security Protocol

<div align="center">
  <img src="https://img.shields.io/badge/Phase%201-🔍%20SCAN-blueviolet" />
  <img src="https://img.shields.io/badge/Phase%202-💀%20EXTERMINATE-critical" />
  <img src="https://img.shields.io/badge/Phase%203-🔥%20FIRE%20BLAZE-orange" />
  <img src="https://img.shields.io/badge/Phase%204-🥚%20COCKROACH%20EGGS-important" />
  <br/>
  <img src="https://img.shields.io/badge/Phase%205-🛡️%20SHIELD-blue" />
  <img src="https://img.shields.io/badge/Phase%206-🔄%20REBUILD-success" />
  <img src="https://img.shields.io/badge/Phase%207-✅%20VERIFY-brightgreen" />
  <img src="https://img.shields.io/badge/Phase%208-📜%20CERTIFY-9cf" />
</div>

### 1. 🔍 **SCAN**
> *Comprehensive deep scan with strict version verification*  
> Scans `node_modules` (including nested dependencies) for known malicious packages and suspicious patterns.

### 2. 💀 **EXTERMINATE**
> *Removal of detected threats*  
> Automatically uninstalls all identified malicious packages and their variants.

### 3. 🔥 **FIRE BLAZE**
> *Complete node_modules purge*  
> Nuclear option: Removes the entire `node_modules` directory to ensure no traces remain.

### 4. 🥚 **COCKROACH EGGS**
> *Lockfile annihilation*  
> Removes all lockfiles to prevent dependency confusion attacks:
> - `package-lock.json`
> - `yarn.lock`
> - `pnpm-lock.yaml`
> - `npm-shrinkwrap.json`

### 5. 🛡️ **SHIELD**
> *Proactive protection*  
> Applies version overrides in `package.json` based on your package manager:
> ```json
> {
>   "overrides": {
>     "ansi-regex": "^6.0.1",
>     "ansi-styles": "^6.2.1"
>   }
> }
> ```
> - **npm**: Uses `overrides`
> - **Yarn**: Uses `resolutions`
> - **pnpm**: Uses `pnpm.overrides`

### 6. 🔄 **REBUILD**
> *Secure dependency installation*  
> Reinstalls all dependencies with visual progress indicators and blacklisting of known malicious packages.

### 7. ✅ **VERIFY**
> *Final security audit*  
> Performs a final scan to ensure all threats are eliminated and provides a detailed security report.

### 8. 📜 **CERTIFY**
> *Documentation and verification*  
> Generates a `SECURITY_CERTIFICATE.txt` with:
> - Scan results
> - Actions taken
> - Recommended next steps
> - Package manager specific lockfile

## 🚦 Usage

### Basic Usage
```bash
# Run with default settings
npx @jxrstudios/pest-control
```

### Advanced Options
```bash
# Run in dry-run mode (shows what would be done without making changes)
npx @jxrstudios/pest-control --dry-run

# Skip interactive prompts (useful for CI/CD)
npx @jxrstudios/pest-control --yes

# Set custom output directory for logs and certificates
npx @jxrstudios/pest-control --output ./security-audit
```

### CI/CD Integration
```yaml
# Example GitHub Actions Workflow
name: Security Scan

on: [push, pull_request]

jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '18.x'
      - name: Run Pest Control
        run: npx @jxrstudios/pest-control --yes
```

> 💡 **Tip:** The tool runs fully unattended with real-time progress indicators and phase labels, ensuring it never appears frozen.

## 🟢 When Nothing Is Detected

You’ll see “No malware detected.” Pest Control still performs full cleanup (including precautionary lockfile removal and secure reinstall) to eliminate any chance of undetected persistence.

## Enforcement Across Package Managers

- npm — `package.json#overrides` and a gated `preinstall` that runs `npm-force-resolutions` only for npm
- Yarn — `package.json#resolutions` is added so Yarn enforces the same safe versions
- pnpm — `package.json#pnpm.overrides` pins safe versions
- After success, the lockfile is regenerated for your detected package manager

## Certification Outputs

- `package.json`: a `pestControl` block with certificate ID, timestamp, and status
- `package-lock.json`: a `pestControl` block reflecting enforced safe versions (npm)
- `SECURITY_CERTIFICATE.txt`: human-readable certificate summary

## Why Trust This?

- Zero Dependencies — Native Node.js only
- Transparent — Simple, readable code
- Safe Defaults — Focused file ops with clear logs and backups via lockfile regen

## Resources

- Official advisory: https://github.com/advisories/GHSA-jvhh-2m83-6w29
- Socket.dev blog: https://socket.dev/blog/ansi-regex-malware

---

Community-driven. Use at your own risk. Issues and PRs welcome.

## Key Features

- Lightning-fast, zero-dependency Node.js CLI (no install required via `npx`)
- Full 8-phase cleanup for `ansi-regex` and related supply-chain malware
- Cross-PM enforcement: npm `overrides`, Yarn `resolutions`, pnpm `pnpm.overrides`
- npm-only preinstall guard: `npx --yes npm-force-resolutions` (auto-skips Yarn/pnpm)
- Precautionary lockfile removal + PM-aware lockfile regeneration
- Persistent spinners with phase labels so the CLI never looks frozen
- Final certification: `SECURITY_CERTIFICATE.txt` and metadata in JSON files
- Windows, macOS, and Linux support (CMD/PowerShell/Bash)

## Supported Package Managers & Platforms

- npm (overrides, gated preinstall guard, package-lock regeneration)
- Yarn (resolutions, yarn.lock re-resolution)
- pnpm (pnpm.overrides, pnpm-lock.yaml regeneration)
- Operating systems: Windows, macOS, Linux

## CI/CD Integration

Add a pre-step to run Pest Control in your pipeline before install/build:

```yaml
steps:
  - name: Pest Control - Exterminate supply chain malware
    run: npx @jxrstudios/pest-control
```

For npm users, the tool also injects a gated `preinstall` script that runs `npm-force-resolutions` only when the user agent is npm, ensuring lockfile alignment prior to `npm install`.

## Troubleshooting

- Spinner looks static in logs: spinners update the same line; the CLI is active. You can increase verbosity by running in a local terminal.
- Lockfile regen fails (missing PM): The tool continues and logs a warning. Install the respective PM and rerun Pest Control.
- "Unknown version" warnings: The package is not in the known safe/malware list; overrides keep you safe, but consider auditing that package.

## FAQ

- Does this delete my code?  
  No. It deletes `node_modules` and lockfiles, then applies safe overrides/resolutions, and performs a clean reinstall.

- Why remove lockfiles even when nothing is detected?  
  Lockfiles can preserve hidden dependency trees. We remove them as a precaution and then regenerate with shields enforced.

- Will this break Yarn or pnpm?  
  No. The npm preinstall guard is gated to npm user agents. Yarn/pnpm users get native enforcement via `resolutions`/`pnpm.overrides` without the preinstall step.

- Can I run it on CI safely?  
  Yes. It is zero-dependency and uses native Node modules. Add `npx pest-control` before your install.

## Source URL Enforcement (Optional)

Pest Control can verify its source repository via a signed JWT before running. This helps ensure you’re using the authentic tool.

Environment variables (kept in `.env.local`, which is already gitignored):

- `GITHUB_REPO_URL` — expected GitHub repo URL
- `JWT_SECRET` — your secret key (do not commit it)
- `SOURCE_JWT` — signed JWT token

Validated claims (HS256): `repo`, `owner`, `domain`, with optional `exp`/`nbf`.

Security note: Do not paste token-generation commands or secrets into the README. Keep `.env` files private.

## Keywords (SEO)

ansi-regex malware removal, npm supply chain attack cleanup, remove malicious npm package, npm overrides safe versions, Yarn resolutions security, pnpm overrides malware, delete lockfile package-lock yarn.lock pnpm-lock, node_modules cleanup, npx security tool, Windows macOS Linux CLI, npm-force-resolutions preinstall, secure reinstall, malware exfiltration prevention
