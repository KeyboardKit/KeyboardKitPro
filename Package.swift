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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.0.8/KeyboardKitPro.zip",
            checksum: "8ee7000126b19b9bf169e96f57cf7f4bdbdb154c9bcc8e762fe077ba95da2cfe"
        )
    ]
)
