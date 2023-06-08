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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.3/kameleoon-client-swift-3.0.3.zip",
            checksum: "5937b258db9bc2a432461004017290c9e5c016cfe7e30a200998603c407b2a84"
        )
    ])
