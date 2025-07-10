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
            checksum: "ffa998dd5dbf8b793ecae33776eb5b4d63c8ae87ee6d23de6deb55ec4db32eaf"
        )
    ])
