# Test Project for @jxrstudios/pest-control

This is a test project to verify the functionality of the `@jxrstudios/pest-control` tool. It intentionally includes a potentially vulnerable version of `ansi-regex` for testing purposes.

## Getting Started

1. First, navigate to this directory:
   ```bash
   cd test-project
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Run the pest-control tool:
   ```bash
   npx @jxrstudios/pest-control run
   ```

## What to Expect

- The tool will scan the `node_modules` directory for known vulnerabilities
- It will detect the vulnerable `ansi-regex` package
- It will provide options to fix or clean up the issues

## After Testing

To clean up after testing:
```bash
rm -rf node_modules package-lock.json
```

## Note
This project is for testing purposes only. Do not use it in production.
