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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.21.0/kameleoon-client-swift-4.21.0.zip",
            checksum: "ff34abcb3aa47c76170843164cf7ad51e0f69649d51e5a573989bd35b6330854"
        )
    ])
