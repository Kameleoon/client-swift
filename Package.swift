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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.23.0/kameleoon-client-swift-4.23.0.zip",
            checksum: "9637c258a98918380cf956bde4a687d56d4998cd01bb6225b085ac823f10b4f8"
        )
    ])
