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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.11.0/kameleoon-client-swift-4.11.0.zip",
            checksum: "361e48f98bf1c1ed862ad634a37aa91f7c360bcb3f39c732bfd3ef39b565d5b1"
        )
    ])
