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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.0.0/kameleoon-client-swift-4.0.0.zip",
            checksum: "6f156ba341780cfa30400f45a43ead13287b6a23a5b673544dc4227eecfcd98e"
        )
    ])
