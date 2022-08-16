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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.1.2/kameleoon-client-swift-2.1.2.zip",
            checksum: "02e1daa6b6e6faacfa44075ada289a286a95657aaa9ac730d3b4e105bdb5d380"
        )
    ])
