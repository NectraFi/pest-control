#!/bin/bash

# Test script for pest-control
# This script creates a test environment and runs the tool

echo "🚀 Setting up test environment..."
mkdir -p test-project
cd test-project

# Create a package.json with a vulnerable dependency
cat > package.json << 'EOL'
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
EOL

echo "📦 Installing dependencies..."
npm install

echo "🔍 Running pest-control..."
npx @jxrstudios/pest-control run

echo "✅ Test complete!"

# Cleanup (commented out for safety)
# echo "🧹 Cleaning up..."
# cd ..
# rm -rf test-project
