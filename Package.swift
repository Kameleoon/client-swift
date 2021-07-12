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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.10/kameleoon-client-swift-2.0.10.zip",
            checksum: "c2e7d6a42095e2ed40e0aae8b97ed2c721a9962b7b1a18697822d57b7e6f6f99"
        )
    ])
