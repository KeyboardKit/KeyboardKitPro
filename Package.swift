// swift-tools-version:5.7

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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.0-rc1/KeyboardKitPro.zip",
            checksum: "19dca82bb5f6f44ea194b0ec6cd78a590322efbaec8c123d4281a02c880d1623"
        )
    ]
)
