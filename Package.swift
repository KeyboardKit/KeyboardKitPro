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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.9.3/KeyboardKitPro.zip",
            checksum: "fadd0a3e1360d7f3a1af29ee72a9bfe6fc82c16998eb90d7cbc40f550bac14a3")
    ]
)
