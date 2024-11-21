#!/bin/bash

# Documentation:
# This script builds a <TARGET> for all supported platforms.

# Exit immediately if a command exits with a non-zero status
set -e

# Verify that all required arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: This script requires exactly one argument"
    echo "Usage: $0 <TARGET>"
    exit 1
fi

# Create local argument variables
TARGET=$1

# Array of platforms to build
PLATFORMS=("iOS" "macOS" "tvOS" "watchOS" "xrOS")

# Find the build script in the same folder and make is executable
FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPT="$FOLDER/build_platform.sh"
chmod +x $SCRIPT

# Build each platform
for PLATFORM in "${PLATFORMS[@]}"; do
    echo "Building for $PLATFORM..."
    if ! bash $SCRIPT $TARGET $PLATFORM; then
        echo "Failed to build $PLATFORM"
        exit 1
    fi
    echo "Successfully built $PLATFORM"
done

# Success
echo "All platforms built successfully!"
