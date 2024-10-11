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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.6.0/kameleoon-client-swift-4.6.0.zip",
            checksum: "31ff19a8f686243c793116db914336a9d701bc389ea98e943ea9f1a0ac483b7e"
        )
    ])
