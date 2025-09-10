// Core functionality for client-side pest control
class PestControl {
  constructor() {
    this.version = '1.0.0';
    this.safeVersions = {
      'ansi-regex': '5.0.1',
      'ansi-styles': '4.3.0',
      'color-name': '1.1.3',
      'color-convert': '1.9.3',
      'color-string': '1.6.0',
      'is-arrayish': '0.2.1',
      'simple-swizzle': '0.2.1',
      'supports-color': '7.2.0'
    };
  }

  // Check if a package version is safe
  isPackageSafe(pkgName, version) {
    const safeVersion = this.safeVersions[pkgName];
    return safeVersion ? safeVersion === version : false;
  }

  // Scan package.json for vulnerable packages
  scanPackageJson(packageJson) {
    try {
      const deps = {
        ...packageJson.dependencies,
        ...packageJson.devDependencies,
        ...packageJson.peerDependencies
      };

      const results = [];
      
      for (const [pkg, version] of Object.entries(deps)) {
        if (this.safeVersions[pkg] && !this.isPackageSafe(pkg, version.replace(/^[^\d.]*([\d.]+).*$/, '$1'))) {
          results.push({
            package: pkg,
            current: version,
            safeVersion: this.safeVersions[pkg],
            status: 'vulnerable'
          });
        }
      }

      return {
        scannedAt: new Date().toISOString(),
        results,
        safeVersions: this.safeVersions
      };
    } catch (error) {
      console.error('Error scanning package.json:', error);
      throw error;
    }
  }

  // Generate a report
  generateReport(scanResults) {
    return {
      ...scanResults,
      summary: {
        totalScanned: scanResults.results.length + (Object.keys(this.safeVersions).length - scanResults.results.length),
        vulnerabilities: scanResults.results.length,
        timestamp: new Date().toISOString()
      }
    };
  }
}

// Export based on the environment
if (typeof module !== 'undefined' && module.exports) {
  // Node.js
  module.exports = PestControl;
} else if (typeof define === 'function' && define.amd) {
  // AMD
  define([], () => PestControl);
} else {
  // Browser global
  window.PestControl = PestControl;
}
