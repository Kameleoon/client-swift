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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.18.0/kameleoon-client-swift-4.18.0.zip",
            checksum: "7e5b264085054ef171e41674143341bf4da9a07aa5be1cb181ae73d28336ec50"
        )
    ])
