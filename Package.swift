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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.3/kameleoon-client-swift-2.0.3.zip",
            checksum: "f99a9a32fa3337f49bac2a1613c146746adadf58f4b096e48cb6b683eb5be344"
        )
    ])
