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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.21.1/kameleoon-client-swift-4.21.1.zip",
            checksum: "73d495800b46ba3c2525e4cbd9c49ab478156d51156656cd20916251cd9c500b"
        )
    ])
