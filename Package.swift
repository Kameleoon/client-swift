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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.22.2/kameleoon-client-swift-4.22.2.zip",
            checksum: "b545e2fc76441278ef8b974b205f18a0b626232366c686f82f42c060613ad469"
        )
    ])
