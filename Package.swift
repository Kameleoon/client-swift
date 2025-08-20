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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.19.0/kameleoon-client-swift-4.19.0.zip",
            checksum: "ac66e411c7b7cf4966fc7b8cdca260dec55a80135219040e0083875ff56dc574"
        )
    ])
