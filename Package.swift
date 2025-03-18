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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.12.0/kameleoon-client-swift-4.12.0.zip",
            checksum: "819004caa72a9b93be758ddd6c16e8737b49c442e905254246c957771eb9d7c8"
        )
    ])
