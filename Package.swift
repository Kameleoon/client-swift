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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.2/kameleoon-client-swift-3.0.2.zip",
            checksum: "6d0ae97137b54edfe64150b457e106deb3cd7aa25f0de38e8263f65b0d2f6e62"
        )
    ])
