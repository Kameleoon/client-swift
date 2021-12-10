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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.13/kameleoon-client-swift-2.0.13.zip",
            checksum: "95f7bc9e749a433c0cbe41e38d3801292506f1beac1892b9baa8206ac9d8e8af"
        )
    ])
