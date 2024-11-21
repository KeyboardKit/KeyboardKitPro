#!/bin/bash

# Documentation:
# This script builds a <TARGET> for a specific <PLATFORM>.

# Verify that all required arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: This script requires exactly two arguments"
    echo "Usage: $0 <TARGET> <PLATFORM>"
    exit 1
fi

TARGET=$1
PLATFORM=$2
BUILD_FOLDER=.build

xcodebuild -scheme $TARGET -derivedDataPath $BUILD_FOLDER -destination generic/platform=$PLATFORM
