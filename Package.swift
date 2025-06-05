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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.14.1/kameleoon-client-swift-4.14.1.zip",
            checksum: "0359707ace885dede07eb66cb75c64ee8cc6550bf345c53bbf581019ed47bb05"
        )
    ])
