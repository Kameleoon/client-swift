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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.11/kameleoon-client-swift-2.0.11.zip",
            checksum: "6f38f31da5cb158a08c65a118e82599ae22d2d1fd6524b7edc47f0f86d9e0820"
        )
    ])
