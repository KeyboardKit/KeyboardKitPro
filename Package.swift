// swift-tools-version:5.6

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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/7.5.0/KeyboardKitPro.zip",
            checksum: "d96a6bf79af482bc228a48b3106e6af05e6ee2c7793e2fca768f62079d9d85f8")
    ]
)
