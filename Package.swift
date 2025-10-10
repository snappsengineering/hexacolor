// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "HexaColor",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "HexaColor",
            targets: ["HexaColor"]
        ),
    ],
    targets: [
        .target(
            name: "HexaColor",
            path: "Sources"
        ),
        .testTarget(
            name: "HexaColorTests",
            dependencies: ["HexaColor"]
        ),
    ]
)
