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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.6/kameleoon-client-swift-3.0.6.zip",
            checksum: "13838b89c2ad583548e796e6852c4889308830d634350228d1cfefcbffec7d20"
        )
    ])
