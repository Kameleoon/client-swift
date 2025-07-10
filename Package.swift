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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.16.0/kameleoon-client-swift-4.16.0.zip",
            checksum: "643d0d3ccd9f4e4665f9a82a3798106f019cdb813df7504b679020d8f9fc21f7"
        )
    ])
