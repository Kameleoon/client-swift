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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.9.0/kameleoon-client-swift-4.9.0.zip",
            checksum: "394c9053e546d93921417555c4fac58b67a13eecb35252a6b0fc72dc411fc3e2"
        )
    ])
