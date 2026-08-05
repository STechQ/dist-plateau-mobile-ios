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
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git", exact: "1.7.0"),
        .package(url: "https://github.com/danielgindi/Charts.git", exact: "5.1.0"),
        .package(url: "https://github.com/openid/AppAuth-iOS.git", exact: "1.7.6")
    ],
    targets: [
        // MARK: - PlateauMobile
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.7/plateaumobile-binaries/Framework/PlateauMobile.xcframework.zip",
            checksum: "9c54b43a1e42156726cf9d516392c08ec9a6c32dfe191a615ef0667b4c8ec4c8"
        ),

        // MARK: - Yoga & YogaKit
        .binaryTarget(
            name: "yoga",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.7/yoga-binaries/Framework/yoga.xcframework.zip",
            checksum: "c66fbf67e5121b9e9ff88c68b5e2fa7da5bb4c1d2cfe9e8ca53631bce72328c4"
        ),
        .binaryTarget(
            name: "YogaKit",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.7/yogakit-binaries/Framework/YogaKit.xcframework.zip",
            checksum: "6da4aa64ed1d23fd664b8f83a401ed5931c8aad99193cc21cb9aee0879cad0bc"
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
