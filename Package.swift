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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.4/kameleoon-client-swift-2.0.5.zip",
            checksum: "7615cf61bd18ff55202b5d32564b5ca56653b73bc66f1fdac549b4c5f01f21d8"
        )
    ])
