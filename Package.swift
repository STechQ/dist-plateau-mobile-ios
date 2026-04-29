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
        .library(
            name: "Yoga",
            targets: ["Yoga"]
        ),
        .library(
            name: "YogaKit",
            targets: ["YogaKit"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/daltoniam/Starscream.git",
            from: "4.0.6"
        ),
        .package(
            url: "https://github.com/airbnb/lottie-ios.git",
            from: "4.5.0"
        ),
        .package(
            url: "https://github.com/danielgindi/Charts.git",
            from: "5.1.0"
        ),
        .package(
            url: "https://github.com/guoyingtao/Mantis.git",
            from: "2.23.0"
        ),
        .package(
            url: "https://github.com/openid/AppAuth-iOS.git",
            from: "1.7.6"
        ),
        .package(
            url: "https://github.com/SDWebImage/SDWebImage.git",
            from: "5.21.0"
        ),
        .package(
            url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git",
            from: "1.7.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "PlateauMobileBinary",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.19/PlateauMobile.xcframework.zip",
            checksum: "31552bb3fc1ecaa2ea7e0738d14932ac984947b4a105439e3952bbc01dc7921b"
        ),
        .binaryTarget(
            name: "YogaBinary",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.19/yoga.xcframework.zip",
            checksum: "eed3969061d998875a1f9c839b21bb249a908f10fa973ab320508b6b1ea60ee9"
        ),
        .binaryTarget(
            name: "YogaKitBinary",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.0.19/YogaKit.xcframework.zip",
            checksum: "8379dc61392cb88ad11fb5e833d9605e8f86799503d61271e80488915fbbcc27"
        ),
        .target(
            name: "PlateauMobile",
            dependencies: [
                "PlateauMobileBinary",
                .product(
                    name: "Starscream",
                    package: "Starscream"
                ),
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                ),
                .product(
                    name: "DGCharts",
                    package: "Charts"
                ),
                .product(
                    name: "Mantis",
                    package: "Mantis"
                ),
                .product(
                    name: "AppAuth",
                    package: "AppAuth-iOS"
                ),
                .product(
                    name: "SDWebImage",
                    package: "SDWebImage"
                ),
                .product(
                    name: "SDWebImageSVGCoder",
                    package: "SDWebImageSVGCoder"
                )
            ],
            path: "Sources/PlateauMobile"
        ),
        .target(
            name: "Yoga",
            dependencies: [
                "YogaBinary"
            ],
            path: "Sources/Yoga"
        ),
        .target(
            name: "YogaKit",
            dependencies: [
                "YogaKitBinary",
                "Yoga"
            ],
            path: "Sources/YogaKit"
        )
    ]
)
