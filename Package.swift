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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.2.0/kameleoon-client-swift-4.2.0.zip",
            checksum: "660afab1a48c3feb1c3361e1c753802e52bbce683a1eece29224c9807c84f5a7"
        )
    ])
