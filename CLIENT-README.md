# Pest Control Client

Client-side version of the pest-control tool for browser and Node.js environments.

## Installation

### Browser (CDN)
```html
<!-- UMD version (for browsers) -->
<script src="https://cdn.jsdelivr.net/npm/@jxrstudios/pest-control-client/dist/pest-control.min.js"></script>

<!-- ES Module version -->
<script type="module">
  import PestControl from 'https://cdn.jsdelivr.net/npm/@jxrstudios/pest-control-client/dist/pest-control.esm.js';
</script>
```

### NPM
```bash
npm install @jxrstudios/pest-control-client
# or
yarn add @jxrstudios/pest-control-client
```

## Usage

### Browser
```javascript
const scanner = new PestControl();

// Example package.json
const packageJson = {
  "dependencies": {
    "ansi-regex": "^6.0.0"
  }
};

const results = scanner.scanPackageJson(packageJson);
console.log(scanner.generateReport(results));
```

### Node.js
```javascript
const PestControl = require('@jxrstudios/pest-control-client');
const scanner = new PestControl();

// Load your package.json
const packageJson = require('./package.json');
const results = scanner.scanPackageJson(packageJson);
console.log(scanner.generateReport(results));
```

## API

### `new PestControl()`
Creates a new instance of the scanner.

### `scanPackageJson(packageJson: Object)`
Scans a package.json object for vulnerable packages.

### `generateReport(scanResults: Object)`
Generates a formatted report from scan results.

### `isPackageSafe(pkgName: string, version: string): boolean`
Checks if a specific package version is safe.

## Building from Source

1. Clone the repository
2. Install dependencies:
   ```bash
   npm install
   ```
3. Build:
   ```bash
   npm run build
   ```

## License
MIT
