// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "KeyboardKitPro",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8),
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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/9.8.0/KeyboardKitPro.zip",
            checksum: "aa11f74375b28c32fd1d75ed2727d52323e0b386605414aad5d154aa081c2347"
        )
    ]
)
