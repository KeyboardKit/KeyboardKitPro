// swift-tools-version:5.8

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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.3.1/KeyboardKitPro.zip",
            checksum: "3fcc9566e2d298800a471ab137f03eff22095d90d2982c524600af920c2b9c0f"
        )
    ]
)
