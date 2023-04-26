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
            url: "https://github.com/Kameleoon/client-swift/releases/download/3.0.1/kameleoon-client-swift-3.0.1.zip",
            checksum: "a148ac33336ec346a15a0865e0e40eea11dd692b0c01ea2e8fb6ea27e9782368"
        )
    ])
