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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.3.0/KeyboardKitPro.zip",
            checksum: "24e72b0a61bdff8d2d1c5dd6e2a93f9068a4ebafbe2cd7f9b9d94d2c3d66444c")
    ]
)
