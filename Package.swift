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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/9.5.1/KeyboardKitPro.zip",
            checksum: "51ffade5ae3922929097ba3e56bdc9497781c4cd5044009713af895232af535e"
        )
    ]
)
