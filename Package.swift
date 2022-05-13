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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.1.0/kameleoon-client-swift-2.1.0.zip",
            checksum: "e5f39622aa5ad378ef13bbb21aa3a8feb70056021e5f048193f73c73289d186e"
        )
    ])
