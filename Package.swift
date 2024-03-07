// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "KeyboardKitPro",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "KeyboardKitPro",
            targets: ["KeyboardKitPro"])
    ],
    targets: [
        .binaryTarget(
            name: "KeyboardKitPro",
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.3.2/KeyboardKitPro.zip",
            checksum: "05f4e9b9bbe0488065a4e427b127a2be3846939b31991eddea0a8d06118629b8"
        )
    ]
)
