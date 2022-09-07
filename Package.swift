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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.3.1/KeyboardKitPro.zip",
            checksum: "552cefbc319091d144688f9083b3b72ffc77ae5780cedf32bf24a31c5f65cbd5")
    ]
)
