#!/bin/bash

# Documentation:
# This script build DocC for a <TARGET>.
# The documentation ends up in to .build/docs.

# Verify that all required arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: This script requires exactly one argument"
    echo "Usage: $0 <TARGET>"
    exit 1
fi

# Define script variables
TARGET=$1
TARGET_LOWERCASED=$(echo "$1" | tr '[:upper:]' '[:lower:]')
BUILD_FOLDER=.build/docc
BUILD_FOLDER_WEB=.build/docc_web
DESTINATION="generic/platform=iOS"

# Transform the documentation for static web hosting
swift package resolve;

# Build documentation
xcodebuild docbuild -scheme $TARGET -derivedDataPath $BUILD_FOLDER -destination $DESTINATION;

# Transform documentation for static web hosting
$(xcrun --find docc) process-archive \
  transform-for-static-hosting $BUILD_FOLDER/Build/Products/Debug-iphoneos/$TARGET.doccarchive \
  --output-path $BUILD_FOLDER_WEB \
  --hosting-base-path $TARGET;

# Add a redirect script to the root page
echo "<script>window.location.href += \"/documentation/$TARGET_LOWERCASED\"</script>" > $BUILD_FOLDER_WEB/index.html;

# Success
echo "Documentation built successfully!"