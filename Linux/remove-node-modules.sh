#!/bin/bash

TARGET_DIR="${1:-.}"

echo "🔍 Searching for node_modules in: $TARGET_DIR"
find "$TARGET_DIR" -type d -name "node_modules" -prune -exec rm -rf '{}' +
echo "✅ Cleaning complete"
