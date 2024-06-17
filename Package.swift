// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "KeyboardKitPro",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "KeyboardKitPro",
            targets: ["KeyboardKitPro"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "KeyboardKitPro",
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.7-rc2/KeyboardKitPro.zip",
            checksum: "7cdc3e7e11ecf1baf5210eb5f683690126c0d828adf36eb32057fc738e3d712a"
        )
    ]
)
