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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.4.1/kameleoon-client-swift-4.4.1.zip",
            checksum: "0063d2dae97afc983d9ef446175a8c1ebb5063d728a654828030fa2fb7706ae9"
        )
    ])
