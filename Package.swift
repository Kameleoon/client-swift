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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.20.0/kameleoon-client-swift-4.20.0.zip",
            checksum: "107e4ddd01d0c85fd3ecf979c2eba2ce25b8487657717d3a3b053513ae744cdd"
        )
    ])
