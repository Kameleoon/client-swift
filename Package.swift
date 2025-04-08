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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.13.3/kameleoon-client-swift-4.13.3.zip",
            checksum: "cdc92e8c633c8a94fc849d9211ee58245392cad0cbaaf483dc8443ba3ce42ae6"
        )
    ])
