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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.22.0/kameleoon-client-swift-4.22.0.zip",
            checksum: "bcec7a24810a1c3a054a097aba6659f74c0a35b819d6f54d5247d5fc222c953a"
        )
    ])
