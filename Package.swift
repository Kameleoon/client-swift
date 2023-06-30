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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.4/kameleoon-client-swift-3.0.4.zip",
            checksum: "e1de3cb0f0f126ecf611c8d644369fc4094f6feeab6c6d1c69c8c19e20f5eaab"
        )
    ])
