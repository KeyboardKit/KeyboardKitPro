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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/9.3.7/KeyboardKitPro.zip",
            checksum: "65dcb76f27c05ffa912e9212ec0be6d519c4c01ae4818459ca77aeebd66ebe45"
        )
    ]
)
