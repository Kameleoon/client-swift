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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.4.2/kameleoon-client-swift-4.4.2.zip",
            checksum: "d8044c0092dec2050c89370dc31b7f39836e8e70b7bb0913f2c5e4ea7866a076"
        )
    ])
