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
            targets: ["PlateauMobile", "Yoga", "YogaKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.19/PlateauMobile.xcframework.zip",
            checksum: "31552bb3fc1ecaa2ea7e0738d14932ac984947b4a105439e3952bbc01dc7921b"
        ),
        .binaryTarget(
            name: "Yoga",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.19/yoga.xcframework.zip",
            checksum: "eed3969061d998875a1f9c839b21bb249a908f10fa973ab320508b6b1ea60ee9"
        ),
        .binaryTarget(
            name: "YogaKit",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.19/YogaKit.xcframework.zip",
            checksum: "8379dc61392cb88ad11fb5e833d9605e8f86799503d61271e80488915fbbcc27"
        ),
    ]
)
