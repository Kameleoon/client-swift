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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.8/kameleoon-client-swift-2.0.8.zip",
            checksum: "5568bfbcc84b7c91b6643daf4610396079974b36ff304e7e353fb69d3378f3ae"
        )
    ])
