// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "KeyboardKitPro",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "KeyboardKitPro",
            targets: ["KeyboardKitPro"])
    ],
    targets: [
        .binaryTarget(
            name: "KeyboardKitPro",
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.0.0/KeyboardKitPro.zip",
            checksum: "54f168678cbd0f626b95390b8ec21eaba5ae47bafdcee0175a77ec3a05d31593")
    ]
)
