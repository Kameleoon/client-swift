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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.13.1/kameleoon-client-swift-4.13.1.zip",
            checksum: "36f5d3b6a4c0a9a0679d1753e5807d4f1f92fee45b796e6cda398bcdb0cfe8d2"
        )
    ])
