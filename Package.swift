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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.7/kameleoon-client-swift-2.0.7.zip",
            checksum: "f303bbda97e07fb686882374c17d3f14abeacf59ea2318a14b865a7084f1696c"
        )
    ])
