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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.1.3/kameleoon-client-swift-2.1.3.zip",
            checksum: "2c5baa9e70ea612752ef8b33f5b66ec0093336b4a7c9ab2cfb6300f32f2b51e1"
        )
    ])
