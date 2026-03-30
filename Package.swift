// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LLCycleScrollView",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "LLCycleScrollView",
            targets: ["LLCycleScrollView"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/onevcat/Kingfisher.git",
            from: "8.0.0"
        ),
    ],
    targets: [
        .target(
            name: "LLCycleScrollView",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
            ],
            path: "Lib/LLCycleScrollView",
            resources: [
                .process("LLCycleScrollView.bundle"),
            ]
        ),
    ]
)
