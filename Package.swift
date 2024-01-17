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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.1.0/kameleoon-client-swift-4.1.0.zip",
            checksum: "61c12d2499c1ec84ed61943cbaa1039095f7410cb9ed78383178939e6f9b6115"
        )
    ])
