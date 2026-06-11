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
            targets: ["PlateauMobileWrapper"]
        ),
        .library(
            name: "Yoga",
            targets: ["yoga"]
        ),
        .library(
            name: "YogaKit",
            targets: ["YogaKitWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-spm.git",
            from: "4.5.0"
        ),
        .package(
            url: "https://github.com/SDWebImage/SDWebImage.git",
            from: "5.21.0"
        ),
        .package(
            url: "https://github.com/danielgindi/Charts.git",
            from: "5.1.0"
        ),
        .package(
            url: "https://github.com/daltoniam/Starscream.git",
            from: "4.0.6"
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
            url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git",
            from: "1.7.0"
        )
    ],
    targets: [
        // MARK: - PlateauMobile
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.5.3/PlateauMobile_1.5.3.xcframework.zip",
            checksum: "366379fb36bd55525ba5ae5c956fb680b3f7461bacd91f8e444ef417c8d496ec"
        ),

        // MARK: - Yoga & YogaKit
        .binaryTarget(
            name: "yoga",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.5.3/yoga.xcframework.zip",
            checksum: "eed3969061d998875a1f9c839b21bb249a908f10fa973ab320508b6b1ea60ee9"
        ),
        .binaryTarget(
            name: "YogaKit",
            url: "https://github.com/STechQ/dist-plateau-mobile-ios/releases/download/1.5.3/YogaKit.xcframework.zip",
            checksum: "8379dc61392cb88ad11fb5e833d9605e8f86799503d61271e80488915fbbcc27"
        ),

        // MARK: - Wrapper Targets
        .target(
            name: "PlateauMobileWrapper",
            dependencies: [
                "PlateauMobile",
                .product(name: "Starscream", package: "Starscream"),
                .product(name: "Lottie", package: "lottie-spm"),
                .product(name: "DGCharts", package: "Charts"),
                .product(name: "Mantis", package: "Mantis"),
                .product(name: "AppAuth", package: "AppAuth-iOS"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SDWebImageSVGCoder", package: "SDWebImageSVGCoder")
            ],
            path: "Sources/PlateauMobile"
        ),
        .target(
            name: "YogaKitWrapper",
            dependencies: [
                "YogaKit",
                "yoga"
            ],
            path: "Sources/YogaKit"
        )
    ]
)
