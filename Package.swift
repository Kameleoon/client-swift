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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.4.3/kameleoon-client-swift-4.4.3.zip",
            checksum: "e7a324dc70bd281f3252be6f8c90a23acd160014b4ed735408461587078518c2"
        )
    ])
