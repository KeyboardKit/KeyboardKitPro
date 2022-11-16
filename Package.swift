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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.5.1/KeyboardKitPro.zip",
            checksum: "c7bd2f88c202251df80d363732e8d4b732395fa1523dab78a9c3dc743869be0d")
    ]
)
