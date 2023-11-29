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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.0.9/KeyboardKitPro.zip",
            checksum: "f6cac5d02314bd1a6ca14426f28a046301e0702e65cd615a30888ab2d563e43b"
        )
    ]
)
