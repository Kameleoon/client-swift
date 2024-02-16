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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.1.2/kameleoon-client-swift-4.1.2.zip",
            checksum: "3d0a4b3220d849fc4b6e4fab76d70571677ae6baee17150009af7a9aa6939eb4"
        )
    ])
