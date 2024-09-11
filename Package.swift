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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.5.0/kameleoon-client-swift-4.5.0.zip",
            checksum: "5db68ff699301bccf89176ec7c6c262e5cacd54000db24712dc702b19e9a4bfa"
        )
    ])
