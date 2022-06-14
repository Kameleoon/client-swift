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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.1.1/kameleoon-client-swift-2.1.1.zip",
            checksum: "29086333feb11b375ddde30a3583eb7d56208410f99d8598012e5ab200762a08"
        )
    ])
