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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.6/kameleoon-client-swift-2.0.6.zip",
            checksum: "27b25486157b0a6c4eeabe1e334e00af353256ac52770d240bf29b71aaed2548"
        )
    ])
