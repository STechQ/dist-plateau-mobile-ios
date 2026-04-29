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
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/plateaumobile-binaries/Framework/PlateauMobile.xcframework.zip",
            checksum: "19a2efc7aea6744f00bda216808eca43b210c157c7440a9772fb66f429e3f615"
        ),
        .binaryTarget(
            name: "YogaBinary",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/yoga-binaries/Framework/yoga.xcframework.zip",
            checksum: "a2d81f5213c039980b4f7714a1058b8ac2668e12c0d6ccf226ef2ae8dbc9c8b3"
        ),
        .binaryTarget(
            name: "YogaKitBinary",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/yogakit-binaries/Framework/YogaKit.xcframework.zip",
            checksum: "a8bb50e4422dfd22b46145e4bcdae0926d50e12b5ca0f68eb2778212880c418c"
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
