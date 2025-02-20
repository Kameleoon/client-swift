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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.10.0/kameleoon-client-swift-4.10.0.zip",
            checksum: "5d29bbb8bc51ce32049c80248c129a70b8f23692bdc379e2a7f9911c663bff27"
        )
    ])
