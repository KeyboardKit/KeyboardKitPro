// swift-tools-version:5.7

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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/8.0-rc2/KeyboardKitPro.zip",
            checksum: "1fb583902f001075619a96050894c16372d6b4300f9cd2cd0a43729c9cc79e9f"
        )
    ]
)
