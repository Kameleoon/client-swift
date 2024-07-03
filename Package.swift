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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.4.0/kameleoon-client-swift-4.4.0.zip",
            checksum: "f471cb24e7cb3999d08d027f5689d6b4ef51c79af85d63089513ce91e825bf9d"
        )
    ])
