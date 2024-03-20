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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.1.3/kameleoon-client-swift-4.1.3.zip",
            checksum: "c0d6daff0a607ccd464e5ba723b2d25ea129a288059b92402b429db31b9e749b"
        )
    ])
