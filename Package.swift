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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.1.0/kameleoon-client-swift-3.1.0.zip",
            checksum: "a661bc30038cc966b3d21c009390e2d79f72cd626efd15c38ad790f5378e64e1"
        )
    ])
