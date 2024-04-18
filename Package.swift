// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Koloda",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Koloda",
            targets: ["Koloda"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/tysonkerridge/pop.git", revision: "68030e08e0b7b5623d76bb7e33e3b590bce3d618"),
    ],
    targets: [
        .target(
            name: "Koloda",
             dependencies: [
                .product(name: "pop", package: "pop"),
            ],
            path: "Pod"
        ),
    ]
)
