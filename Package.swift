// swift-tools-version:5.6

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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.5.2/KeyboardKitPro.zip",
            checksum: "8c3c0eb72ecf69ef96f27b1ce91e0fd17253d8b186a44b2b3c5644b45f4304e1")
    ]
)
