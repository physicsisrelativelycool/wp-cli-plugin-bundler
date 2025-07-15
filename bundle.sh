#!/bin/bash

# wp-cli-plugin-bundler: Bundle a WP plugin with version update and optional minification

PLUGIN_MAIN_FILE="plugin.php"
ZIP_NAME="plugin-bundle.zip"
VERSION_TAG=$(date +"%Y.%m.%d")
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Update version in plugin main file
echo "🔄 Updating version in $PLUGIN_MAIN_FILE..."
sed -i.bak "s/^\(\s*\*\s*Version:\s*\).*$/\1$VERSION_TAG/" "$PLUGIN_MAIN_FILE"

# Minify JS files if present
echo "🧹 Minifying JS files (if any)..."
find . -name '*.js' ! -name '*.min.js' -exec sh -c '
  for file do
    echo "Minifying $file"
    terser "$file" -o "${file%.js}.min.js" --compress --mangle
  done
' sh {} +

# Remove old ZIP if exists
rm -f "$ZIP_NAME"

# Create ZIP archive
echo "📦 Creating ZIP archive..."
zip -r "$ZIP_NAME" . -x "*.git*" "*node_modules*" "*__pycache__*" "*.DS_Store" "*.bak"

echo "✅ Done! Created $ZIP_NAME with version $VERSION_TAG at $TIMESTAMP."
