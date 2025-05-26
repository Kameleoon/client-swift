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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.14.0/kameleoon-client-swift-4.14.0.zip",
            checksum: "1df1f3f708e32bf0dda9baf24038eed3d4fd6a3043fec3f2670709dcc2fa5354"
        )
    ])
