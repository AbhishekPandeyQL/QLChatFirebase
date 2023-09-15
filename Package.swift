// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QLChatFirebase",
    platforms: [.iOS(.v13),],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "QLChatFirebase",
            targets: ["QLChatFirebase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "QLChatFirebase",
            dependencies: [
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
                // Add other Firebase products as needed
            ])
    ]
)
