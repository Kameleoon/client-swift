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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.8.0/kameleoon-client-swift-4.8.0.zip",
            checksum: "fc15ad48b1329f756a64a645aa78d249b28ffdf09e4d7eae38ebf4d39e2e4659"
        )
    ])
