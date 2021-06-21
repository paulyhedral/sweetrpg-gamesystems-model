// swift-tools-version:5.4
import PackageDescription


let package = Package(
        name: "sweetrpg-gamesystem-model",
        platforms: [
            .macOS(.v10_15),
        ],
        products: [
            .library(name: "GameSystemModel", targets: [ "GameSystemModel" ])
        ],
        dependencies: [
            .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
            .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        ],
        targets: [
            .target(
                    name: "GameSystemModel",
                    dependencies: [
                        .product(name: "Fluent", package: "fluent"),
                        .product(name: "Vapor", package: "vapor"),
                    ],
                    swiftSettings: [
                        // Enable better optimizations when building in Release configuration. Despite the use of
                        // the `.unsafeFlags` construct required by SwiftPM, this flag is recommended for Release
                        // builds. See <https://github.com/swift-server/guides/blob/main/docs/building.md#building-for-production> for details.
                        .unsafeFlags([ "-cross-module-optimization" ], .when(configuration: .release)),
                    ]
            ),
            .testTarget(name: "GameSystemModelTests", dependencies: [
                .target(name: "GameSystemModel"),
                .product(name: "XCTVapor", package: "vapor"),
            ]),
        ]
)
