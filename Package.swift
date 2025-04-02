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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.13.2/kameleoon-client-swift-4.13.2.zip",
            checksum: "5227b49ef8822d6330df3aa15d635006004aeb82d737001e67b1901650cf87e1"
        )
    ])
