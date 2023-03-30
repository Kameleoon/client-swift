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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.0/kameleoon-client-swift-3.0.0.zip",
            checksum: "2ab2a8f5052da6bd193197894799a64daa5df9938cb8ee0900f322734ff561e7"
        )
    ])
