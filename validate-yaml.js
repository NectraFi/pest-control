const fs = require('fs');
const yaml = require('js-yaml');

const filePath = process.argv[2];

if (!filePath) {
  console.error('Please provide a file path');
  process.exit(1);
}

try {
  const fileContents = fs.readFileSync(filePath, 'utf8');
  yaml.load(fileContents);
  console.log(`YAML validation successful for ${filePath}`);
} catch (e) {
  console.error(`YAML validation failed for ${filePath}:`, e.message);
  process.exit(1);
}
