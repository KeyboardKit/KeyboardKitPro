// swift-tools-version:5.6

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
            url: "https://github.com/KeyboardKit/KeyboardKit/releases/download/7.9.2/KeyboardKitPro.zip",
            checksum: "8b615d506a48e1daab1d0a1c5e18fab3bb7b8fe6fdc3c42836c17fb8cba8ccec"
        )
    ]
)
