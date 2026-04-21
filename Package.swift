// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PlateauMobile",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "PlateauMobile",
            targets: ["PlateauMobile"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.17/PlateauMobile.xcframework.zip",
            checksum: "31552bb3fc1ecaa2ea7e0738d14932ac984947b4a105439e3952bbc01dc7921b"
        ),
        .binaryTarget(
            name: "Yoga",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.17/yoga.xcframework.zip",
            checksum: "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
        ),
        .binaryTarget(
            name: "YogaKit",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.17/YogaKit.xcframework.zip",
            checksum: "8379dc61392cb88ad11fb5e833d9605e8f86799503d61271e80488915fbbcc27"
        ),
    ]
)
