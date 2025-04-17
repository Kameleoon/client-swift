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
            url: "https://github.com/Kameleoon/client-swift/releases/download/4.13.4/kameleoon-client-swift-4.13.4.zip",
            checksum: "1edd552134a977d520c4949942b4861f61529eca0adf23de7f873ea704c31c5a"
        )
    ])
