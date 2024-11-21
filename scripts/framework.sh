#!/bin/bash

# Documentation:
# This script generates an XCFramework for a certain <TARGET>.

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
BUILD_FOLDER=.build/
BUILD_FOLDER_ARCHIVES=.build/framework_archives

# Delete old builds
echo "Cleaning old builds..."
rm -rf $BUILD_FOLDER_ARCHIVES

# Generate XCArchive files for all platforms
echo "Generating XCArchive files..."
xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=iOS"                 -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-iOS         SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=iOS Simulator"       -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-iOS-Sim     SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=macOS"             -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-macOS       SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=tvOS"              -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-tvOS        SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=tvOS Simulator"    -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-tvOS-Sim    SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=watchOS"           -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-watchOS     SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# xcodebuild archive -scheme $TARGET -configuration Release -destination "generic/platform=watchOS Simulator" -archivePath $BUILD_FOLDER_ARCHIVES$TARGET-watchOS-Sim SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Genererate iOS XCFramework
echo "Generating iOS XCFramework..."
xcodebuild -create-xcframework \
    -framework $BUILD_FOLDER_ARCHIVES$TARGET-iOS.xcarchive/Products/Library/Frameworks/$TARGET.framework\
    -framework $BUILD_FOLDER_ARCHIVES$TARGET-iOS-Sim.xcarchive/Products/Library/Frameworks/$TARGET.framework\
    -output $BUILD_FOLDER$TARGET.xcframework

# Genererate iOS XCFramework zip
echo "Generating iOS XCFramework zip file..."
zip -r $BUILD_FOLDER$TARGET.zip $BUILD_FOLDER$TARGET.xcframework
echo ""
echo "***** CHECKSUM *****"
swift package compute-checksum $BUILD_FOLDER$TARGET.zip
echo "********************"
echo ""

# Genererate multi-platform XCFramework
# echo "Generating multi-platform XCFramework..."
# xcodebuild -create-xcframework \
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-iOS.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-iOS-Sim.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-macOS.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-tvOS.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-tvOS-Sim.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-watchOS.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -framework $BUILD_FOLDER_ARCHIVES$TARGET-watchOS-Sim.xcarchive/Products/Library/Frameworks/$TARGET.framework\
#     -output $BUILD_FOLDER$TARGET-universal.xcframework

# Genererate multi-platform XCFramework zip file
# echo "Generating multi-platform XCFramework zip file..."
# zip -r $BUILD_FOLDER$TARGET-universal.zip $BUILD_FOLDER$TARGET-universal.xcframework

# Success
echo "Framework created successfully!"
