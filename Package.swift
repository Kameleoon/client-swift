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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.22.1/kameleoon-client-swift-4.22.1.zip",
            checksum: "50700a4dca55c47b4a931fa85e22a34808beb1f044bde10efb99d94c12906cd0"
        )
    ])
