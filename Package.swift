// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "KeyboardKitPro",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/9.0.3/KeyboardKitPro.zip",
            checksum: "0347bbce732b09054fb87715cb1979699198b8e760ce2ab3f206cfa9268d51e7"
        )
    ]
)
