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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.7.0/kameleoon-client-swift-4.7.0.zip",
            checksum: "d0010e4a17b50a698c340a9d18f282aa372e5878408c5d524dcad6f20a983ab9"
        )
    ])
