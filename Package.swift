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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.13.0/kameleoon-client-swift-4.13.0.zip",
            checksum: "1f1590b5645875c946c19f13d91b1d84a5656824ca09c90f407cbd778cdc77ce"
        )
    ])
