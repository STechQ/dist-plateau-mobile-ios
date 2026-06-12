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
        .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.5.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", exact: "5.21.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git", exact: "1.8.0"),
        .package(url: "https://github.com/danielgindi/Charts.git", exact: "5.1.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", exact: "4.0.8"),
        .package(url: "https://github.com/guoyingtao/Mantis.git", exact: "2.31.2"),
        .package(url: "https://github.com/openid/AppAuth-iOS.git", exact: "1.7.6")
    ],
    targets: [
        // MARK: - PlateauMobile
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/plateaumobile-binaries/Framework/PlateauMobile.xcframework.zip",
            checksum: "2dc993526c284da55eb9c44b70129d3b3e5420b38eea65355089f5f90620217d"
        ),

        // MARK: - Yoga & YogaKit
        .binaryTarget(
            name: "yoga",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/yoga-binaries/Framework/yoga.xcframework.zip",
            checksum: "eed3969061d998875a1f9c839b21bb249a908f10fa973ab320508b6b1ea60ee9"
        ),
        .binaryTarget(
            name: "YogaKit",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/yogakit-binaries/Framework/YogaKit.xcframework.zip",
            checksum: "8379dc61392cb88ad11fb5e833d9605e8f86799503d61271e80488915fbbcc27"
        ),

        // MARK: - Wrapper Targets
        .target(
            name: "PlateauMobileWrapper",
            dependencies: [
                "PlateauMobile",
                .product(name: "Lottie", package: "lottie-spm"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SDWebImageSVGCoder", package: "SDWebImageSVGCoder"),
                .product(name: "DGCharts", package: "Charts"),
                .product(name: "Starscream", package: "Starscream"),
                .product(name: "Mantis", package: "Mantis"),
                .product(name: "AppAuth", package: "AppAuth-iOS")
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
