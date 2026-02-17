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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.25.0/kameleoon-client-swift-4.25.0.zip",
            checksum: "82dc7ed0d11484b2b49a6e38d9735d05f86ff920d5ceb828a1e597144a23ae6f"
        )
    ])
