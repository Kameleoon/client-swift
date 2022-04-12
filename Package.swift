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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.15/kameleoon-client-swift-2.0.15.zip",
            checksum: "5063674ff268d414ceb012e42cc8f230db4fa741d171c6d9a330c5da4d1a186f"
        )
    ])
