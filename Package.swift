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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.3.4/KeyboardKitPro.zip",
            checksum: "9ead23fcdbc9188417cdd1f6f5dde6d4bac1698fa7b8db01c8c4a3d7dd7f8b59"
        )
    ]
)
