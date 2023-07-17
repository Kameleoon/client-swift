// swift-tools-version:5.3

import PackageDescription
let package = Package(
    name: "kameleoonClient",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "kameleoonClient",
            targets: ["kameleoonClient"])
    ],
    targets: [
        .binaryTarget(
            name: "kameleoonClient",
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.5/kameleoon-client-swift-3.0.5.zip",
            checksum: "130c3e0f162f86d229db457bd7e86b86b4cac73eb79479d8fa184954e76e2d2e"
        )
    ])
