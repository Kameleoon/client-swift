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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.17.0/kameleoon-client-swift-4.17.0.zip",
            checksum: "794fc5487d447f11c4e38cdf73720471d7e315075d5302b5f13c19fb69150910"
        )
    ])
