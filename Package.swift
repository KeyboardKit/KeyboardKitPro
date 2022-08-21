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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/6.1.0/KeyboardKitPro.zip",
            checksum: "4cdac0c0062e55c023da4d16781629402dc106eb8f0f00191d0378a6f3e64a86")
    ]
)
