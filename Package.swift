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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.15.0/kameleoon-client-swift-4.15.0.zip",
            checksum: "f67b7921ff61782a2cd1b211e23e73b3be37826b52009846c6329c402d52ce0d"
        )
    ])
