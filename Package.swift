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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.2.0/KeyboardKitPro.zip",
            checksum: "79b78e08ba7587a99078a754e31b8dc7d15cfe95a27d9f8b3b651af940fe26f5")
    ]
)
