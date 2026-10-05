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
        )
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.5.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", exact: "5.21.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git", exact: "1.7.0"),
        .package(url: "https://github.com/ChartsOrg/Charts.git", exact: "5.1.0"),
        .package(url: "https://github.com/openid/AppAuth-iOS.git", exact: "1.7.6")
    ],
    targets: [
        // MARK: - PlateauMobile
        .binaryTarget(
            name: "PlateauMobile",
            path: "plateaumobile-binaries/Framework/PlateauMobile.xcframework.zip"
        ),

        // MARK: - Yoga & YogaKit
        .binaryTarget(
            name: "yoga",
            path: "yoga-binaries/Framework/yoga.xcframework.zip"
        ),
        .binaryTarget(
            name: "YogaKit",
            path: "yogakit-binaries/Framework/YogaKit.xcframework.zip"
        ),

        // MARK: - Wrapper Target
        .target(
            name: "PlateauMobileWrapper",
            dependencies: [
                "PlateauMobile",
                "YogaKit",
                "yoga",
                .product(name: "Lottie", package: "lottie-spm"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SDWebImageSVGCoder", package: "SDWebImageSVGCoder"),
                .product(name: "DGCharts", package: "Charts"),
                .product(name: "AppAuth", package: "AppAuth-iOS")
            ],
            path: "Sources/PlateauMobile"
        )
    ]
)
