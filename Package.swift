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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.1.4/kameleoon-client-swift-4.1.4.zip",
            checksum: "6be42fd75c40a3aced657c2a373b1351e22a9d4fd1f17d26e24162712478398c"
        )
    ])
