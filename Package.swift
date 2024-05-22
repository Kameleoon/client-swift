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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.3.0/kameleoon-client-swift-4.3.0.zip",
            checksum: "091e7c481dc2e11169e7243fcbb3bcacb2088e6a3c15f6f5c718b777985f8c70"
        )
    ])
