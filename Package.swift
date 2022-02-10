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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.14/kameleoon-client-swift-2.0.14.zip",
            checksum: "40c90b084bc40da1387a8002838bc856db511b0b0100cf6bc887672b6fdfff49"
        )
    ])
