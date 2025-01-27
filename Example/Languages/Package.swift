// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Languages",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "RunestoneJavaScriptLanguage", targets: ["RunestoneJavaScriptLanguage"])
    ],
    dependencies: [
        .package(path: "../Runestone")
    ],
    targets: [
        .target(name: "RunestoneJavaScriptLanguage", dependencies: ["TreeSitterJavaScript", "Runestone"], resources: [.copy("queries")]),
        .target(name: "TreeSitterJavaScript", cSettings: [.headerSearchPath("src")])
    ]
)
