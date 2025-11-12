// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "CropPickerController", // Your library name
    platforms: [
        .iOS(.v13) // Set minimum supported iOS version
    ],
    products: [
        .library(
            name: "CropPickerController",
            targets: ["CropPickerController"]
        ),
    ],
    targets: [
        .target(
            name: "CropPickerController",
            path: "Sources", // folder with source files
            exclude: ["Info.plist"], // exclude non-source files
            resources: [
                .process("Resources") // if the library has images/storyboards
            ]
        ),
        .testTarget(
            name: "CropPickerControllerTests",
            dependencies: ["CropPickerController"]
        ),
    ]
)
