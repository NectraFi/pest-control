<div align="center">

<pre style="margin:0 auto; display:inline-block; text-align:center;"><code>
██████╗ ███████╗███████╗████████╗     ██████╗██████╗ ██████╗ 
██╔══██╗██╔════╝██╔════╝╚══██╔══╝    ██╔════╝██╔══██╗██╔══██╗
██████╔╝█████╗  ███████╗   ██║       ██║     ██████╔╝██████╔╝
██╔═══╝ ██╔══╝  ╚════██║   ██║       ██║     ██╔══██╗██╔═══╝ 
██║     ███████╗███████║   ██║       ╚██████╗██║  ██║██║     
╚═╝     ╚══════╝╚══════╝   ╚═╝        ╚═════╝╚═╝  ╚═╝╚═╝     

💀 NPM Malware Extermination Tool v1.1.9
BATTLE-TESTED • ENTERPRISE-GRADE • BOT-RESISTANT
AUTHENTIC SECURITY TOOL - VERIFIED INTEGRITY
</code></pre>

[![npm Version](https://img.shields.io/npm/v/@jxrstudios/pest-control?color=blue&label=npm%20version&style=for-the-badge)](https://www.npmjs.com/package/@jxrstudios/pest-control)
[![License](https://img.shields.io/github/license/NectraFi/pest-control?color=blueviolet&style=for-the-badge)](https://github.com/NectraFi/pest-control/blob/main/LICENSE)
[![Downloads](https://img.shields.io/npm/dt/@jxrstudios/pest-control?color=green&style=for-the-badge)](https://www.npmjs.com/package/@jxrstudios/pest-control)

[![GitHub Advisory](https://img.shields.io/badge/Advisory-GHSA--jvhh--2m83--6w29-critical?style=for-the-badge&color=red)](https://github.com/advisories/GHSA-jvhh-2m83-6w29)
[![Socket.dev Announcement](https://img.shields.io/badge/Socket.dev-ansi--regex%20malware-blue?style=for-the-badge)](https://socket.dev/blog/ansi-regex-malware)

<div>
  <a href="https://github.com/advisories/GHSA-jvhh-2m83-6w29">Official GitHub Advisory</a>
  •
  <a href="https://socket.dev/blog/ansi-regex-malware">Socket.dev announcement</a>
  
</div>

<p align="center">
  <img src="assets/pest-control-icon.svg" alt="Pest Control icon" width="56" height="56" />
</p>

</div>

---

# Pest Control - NPM Malware Exterminator


## ⚡ Quick Start

1. Run in your project root:
   ```bash
   npx @jxrstudios/pest-control
   ```
2. The tool will scan, clean, and enforce safe versions automatically.
3. Reinstall dependencies with your package manager:
   ```bash
   npm install
   # or
   yarn install
   # or
   pnpm install
   ```

No configuration, no secrets, zero dependencies required.

---

## 🚀 Installation

### Using npx (Recommended)
```bash
# Run this in your project root. It does everything.
npx @jxrstudios/pest-control
```



## One of History's Biggest Supply-Chain Attacks — Overnight

### What You Need to Know

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

## ✅ Protected Packages & Safe Versions

The CLI enforces the following safe versions in your project (via npm `overrides`, Yarn `resolutions`, and pnpm `pnpm.overrides`). These are client-side safe pins only — no backend internals are exposed.

| Package | Safe Version |
|---------|--------------|
| ansi-regex | 5.0.1 |
| ansi-styles | 4.3.0 |
| color-name | 1.1.3 |
| color-convert | 1.9.3 |
| color-string | 1.6.0 |
| is-arrayish | 0.2.1 |
| simple-swizzle | 0.2.1 |
| supports-color | 7.2.0 |

These pins are applied automatically and kept in sync across npm, Yarn, and pnpm to prevent compromised versions from entering your dependency tree.

## 🔎 Identify Legit vs Counterfeit/Hijacked Packages

Use these quick checks before trusting or upgrading a package:

- Maintainers and org ownership
  - Verify the maintainer list and scope ownership.
    ```bash
    npm view <package> maintainers
    npm view <package> name # ensure expected scope/name
    ```

- Repository and homepage legitimacy
  - Check that the `repository.url` and `homepage` match the real project.
    ```bash
    npm view <package> repository.url homepage
    ```

- Version timeline anomalies
  - Look for sudden version jumps or bursts of releases.
    ```bash
    npm view <package> time
    npm view <package> versions --json
    ```

- Dist-tags and downloads sanity
  - Confirm `latest` points to the expected version; look for unusual download spikes.
    ```bash
    npm view <package> dist-tags
    npm view <package> downloads --json 2>/dev/null || echo "Check npm trends site"
    ```

- Tarball integrity and contents
  - Inspect the package tarball when in doubt.
    ```bash
    npm pack <package>@<version>
    tar -tf <downloaded-tarball.tgz> | head -n 50
    ```

- Supply‑chain hardening when investigating
  - Avoid running lifecycle scripts while inspecting:
    ```bash
    npm install <package>@<version> --ignore-scripts --no-audit --no-fund
    ```

- Pin exact safe versions
  - Lock to known‑good versions with overrides/resolutions (this tool automates that):
    ```json
    {
      "overrides": {
        "ansi-regex": "5.0.1"
      }
    }
    ```

If any check looks suspicious (maintainers changed, repo mismatch, unexpected dist-tag, sudden version surge), pause upgrades and pin to the last known safe version until verified.

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

## 🧠 Advanced Users: In-Depth Verification (Optional)

> Disclaimer: Broad ecosystem scans can miss localized or repackaged threats. If you suspect compromise, validate at the file/directory level. These checks are optional and safe to run.

1) List vulnerable families present (tree view)

```bash
npm ls ansi-regex ansi-styles color-name color-convert color-string --all || true
```

2) Verify pinned versions in metadata and lockfiles

```bash
# package.json (npm)
cat package.json | findstr /R /C:"\"overrides\"\|ansi-regex\|ansi-styles" 2>nul || grep -E '"overrides|ansi-regex|ansi-styles' package.json || true

# package-lock.json (npm)
findstr /I "ansi-regex ansi-styles" package-lock.json 2>nul || grep -iE 'ansi-regex|ansi-styles' package-lock.json || true

# yarn.lock / pnpm-lock.yaml
findstr /I "ansi-regex ansi-styles" yarn.lock 2>nul || grep -iE 'ansi-regex|ansi-styles' yarn.lock 2>/dev/null || true
findstr /I "ansi-regex ansi-styles" pnpm-lock.yaml 2>nul || grep -iE 'ansi-regex|ansi-styles' pnpm-lock.yaml 2>/dev/null || true
```

3) Search node_modules for suspicious exfiltration patterns

```bash
# Windows (PowerShell)
Get-ChildItem -Path node_modules -Recurse -Include *.js -ErrorAction SilentlyContinue |
  Select-String -Pattern 'process.env','fetch\(','http://','https://','child_process','curl','Invoke-WebRequest','setRequestHeader','Authorization' |
  Select-Object Path, LineNumber -Unique | Select-Object -First 200

# macOS/Linux
grep -RIn --include=*.js -E "process\.env|fetch\(|https?://|child_process|curl|setRequestHeader|Authorization" node_modules 2>/dev/null | head -n 200
```

4) Inspect a specific tarball before trusting it

```bash
npm pack <pkg>@<version>
tar -tf <pkg>-<version>.tgz | head -n 80
```

5) Install for analysis only (no scripts)

```bash
npm install <pkg>@<version> --ignore-scripts --no-audit --no-fund
```

If any result looks suspicious (unexpected network calls, credential headers, or unrecognized maintainers), pause upgrades and pin to the last known safe version. Then run this tool’s cleanup again.

## Certification Outputs

- `package.json`: a `pestControl` block with certificate ID, timestamp, and status
- `package-lock.json`: a `pestControl` block reflecting enforced safe versions (npm)
- `SECURITY_CERTIFICATE.txt`: human-readable certificate summary

## Social Preview (Sharing)

To get a clean preview card when sharing the repo:

1. Open your repo page on GitHub.
2. Go to `Settings` > `General` > `Social preview`.
3. Upload `assets/social-preview.svg` (or the exported PNG if GitHub requires it).
4. Save. GitHub will use this image for link previews.

## Why Trust This?

- Zero Dependencies — Native Node.js only
- Transparent — Simple, readable code
- Safe Defaults — Focused file ops with clear logs and backups via lockfile regen

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

## Keywords (SEO)

ansi-regex malware removal, npm supply chain attack cleanup, remove malicious npm package, npm overrides safe versions, Yarn resolutions security, pnpm overrides malware, delete lockfile package-lock yarn.lock pnpm-lock, node_modules cleanup, npx security tool, Windows macOS Linux CLI, npm-force-resolutions preinstall, secure reinstall, malware exfiltration prevention
