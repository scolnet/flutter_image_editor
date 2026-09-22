// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "image_editor_common",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "image-editor-common", targets: ["image_editor_common"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "image_editor_common",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/image_editor_common")
            ]
        )
    ]
)
