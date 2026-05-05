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
    targets: [
        // MARK: - PlateauMobile
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/plateaumobile-binaries/Framework/PlateauMobile.xcframework.zip",
            checksum: "19a2efc7aea6744f00bda216808eca43b210c157c7440a9772fb66f429e3f615"
        ),

        // MARK: - Yoga & YogaKit
        .binaryTarget(
            name: "yoga",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/yoga-binaries/Framework/yoga.xcframework.zip",
            checksum: "eed3969061d998875a1f9c839b21bb249a908f10fa973ab320508b6b1ea60ee9"
        ),
        .binaryTarget(
            name: "YogaKit",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/yogakit-binaries/Framework/YogaKit.xcframework.zip",
            checksum: "8379dc61392cb88ad11fb5e833d9605e8f86799503d61271e80488915fbbcc27"
        ),

        // MARK: - 3rd Party Binary Dependencies
        .binaryTarget(
            name: "Starscream",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/Starscream.xcframework.zip",
            checksum: "206c09f3b5277373985790eafd2fcac0a2f5d82bd1162da40b4d546fc2d89d10"
        ),
        .binaryTarget(
            name: "Lottie",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/Lottie.xcframework.zip",
            checksum: "78cff695a1baa0ff02071bc344b41b2f6f5f32fdbf212aa2c9f18e0785b19dfe"
        ),
        .binaryTarget(
            name: "DGCharts",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/DGCharts.xcframework.zip",
            checksum: "58d922ba334f14e7c7d3f81e6cd5ab31df481b03a8da22644e518f85f9a769a5"
        ),
        .binaryTarget(
            name: "Mantis",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/Mantis.xcframework.zip",
            checksum: "941146da105eef6239d0b01abaf86437607d47ba1c01ef7bff477397bf5886cb"
        ),
        .binaryTarget(
            name: "AppAuth",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/AppAuth.xcframework.zip",
            checksum: "08f195e2dc023e381a34cf96b81cdffa76c508a866f5ef02cd087d0922b34b6e"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/SDWebImage.xcframework.zip",
            checksum: "696864afab823492bd5a7939c671d77c0bc98c164c5171fd7f78eb980393cfe0"
        ),
        .binaryTarget(
            name: "SDWebImageSVGCoder",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/binaries/SDWebImageSVGCoder.xcframework.zip",
            checksum: "5d5418b8cadc05a945be62267de7fc83befa249a983bb514583653f316601ab3"
        ),

        // MARK: - Wrapper Targets
        .target(
            name: "PlateauMobileWrapper",
            dependencies: [
                "PlateauMobile",
                "Starscream",
                "Lottie",
                "DGCharts",
                "Mantis",
                "AppAuth",
                "SDWebImage",
                "SDWebImageSVGCoder"
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
