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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.1.1/kameleoon-client-swift-4.1.1.zip",
            checksum: "755dcf3839c9d64cce61f79d7f461f00e0f4322879f7df6ec5d1e3599cce5bcf"
        )
    ])
