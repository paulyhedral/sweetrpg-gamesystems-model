// swift-tools-version:4.0
import PackageDescription


let package = Package(
    name: "GameSystemObjects",
    products: [
        .library(name: "GameSystemObjects", targets: ["GameSystemObjects"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "GameSystemObjects", dependencies: ["Vapor"]),
        .testTarget(name: "GameSystemObjectsTests", dependencies: ["GameSystemObjects"]),
    ]
)
