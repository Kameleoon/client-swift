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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.1/kameleoon-client-swift-2.0.1.zip",
            checksum: "b86b90151e10bed43aceac8e7f94fd541bb11221e7d22a8ae6c2c7238582f10b"
        )
    ]) 
