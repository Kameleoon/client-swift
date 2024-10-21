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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.6.1/kameleoon-client-swift-4.6.1.zip",
            checksum: "459e8f988533a8160a28484b0c0ef03a6ad5ac6f1c9d09df888e0243f2f61fee"
        )
    ])
