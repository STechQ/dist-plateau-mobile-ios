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
    dependencies: [],
    targets: [
        // MARK: - PlateauMobile
        .binaryTarget(
            name: "PlateauMobile",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/plateaumobile-binaries/Framework/PlateauMobile_1.5.3.xcframework.zip",
            checksum: "366379fb36bd55525ba5ae5c956fb680b3f7461bacd91f8e444ef417c8d496ec"
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

        // MARK: - 3rd Party Binary Dependencies
        .binaryTarget(
            name: "AppAuth",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/AppAuth.xcframework.zip",
            checksum: "fdfbbe9280a2d21383dcf8b27bff2af6ba7f58173f8f5adc8c5993ac796039bf"
        ),
        .binaryTarget(
            name: "DGCharts",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/DGCharts.xcframework.zip",
            checksum: "aab2d5de3b1e940b964574609368b93c9d5e71748388ed2e54a1a569208c5fa8"
        ),
        .binaryTarget(
            name: "Lottie",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/Lottie.xcframework.zip",
            checksum: "ebbffd776358cf3d62d89c7a17c9a283aa1be555179406b586624e79b358b22b"
        ),
        .binaryTarget(
            name: "Mantis",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/Mantis.xcframework.zip",
            checksum: "9513e7d912b7c5a2c4d635c7db56b42a563b2089e89805f709c71e464fd3b34d"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/SDWebImage.xcframework.zip",
            checksum: "b69f1960f7beec10ade86e0f58b6d0b63b79a5697bb2507e542ead3d196af2fb"
        ),
        .binaryTarget(
            name: "SDWebImageSVGCoder",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/SDWebImageSVGCoder.xcframework.zip",
            checksum: "ee3559f60242cc6a46836464f5d4051d3a7fe759a7e71127d8288b61c937fe42"
        ),
        .binaryTarget(
            name: "Starscream",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/Starscream.xcframework.zip",
            checksum: "ca73310491a82869307c95d3f7a9a44e0034ad5d752ac48c04aa158858572d4c"
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
