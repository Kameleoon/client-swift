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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.24.0/kameleoon-client-swift-4.24.0.zip",
            checksum: "50e1d1812dd0182fd66cf25680d8c018b59a4ea38e31071f279bb71fe5a7ed67"
        )
    ])
