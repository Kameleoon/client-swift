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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.4/kameleoon-client-swift-2.0.4.zip",
            checksum: "644c873b6d8b546eda90355d946947bd938ce018d2aab9f5f33a85799332b39b"
        )
    ])
