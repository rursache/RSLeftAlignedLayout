// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RSLeftAlignedLayout",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "RSLeftAlignedLayout",
            targets: ["RSLeftAlignedLayout"]),
    ],
    targets: [
        .target(
            name: "RSLeftAlignedLayout",
            path: "Sources"
        )
    ],
    swiftLanguageVersions: [.v5]
)
