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
            url: "https://github.com/Kameleoon/client-swift/releases/download/2.0.12/kameleoon-client-swift-2.0.12.zip",
            checksum: "ac9ce613da6666d8c756f88fe63d121df073677d8eed352bc7acdb3ffd4fc50f"
        )
    ])
