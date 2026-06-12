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
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/plateaumobile-binaries/Framework/PlateauMobile.xcframework.zip",
            checksum: "6cab69af49164d7c8a4159f414085ca520164266f6e6718da96657ec97a7098e"
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
            checksum: "283f8a72c87a955eae74453c94befc7bf489bd069d916d5da91e383233aa5ee1"
        ),
        .binaryTarget(
            name: "DGCharts",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/DGCharts.xcframework.zip",
            checksum: "56551814c21e39e6a9e1a91b48046176443104ca0790798bb7059bae0a87c9a7"
        ),
        .binaryTarget(
            name: "Lottie",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/Lottie.xcframework.zip",
            checksum: "ecab8a67ad8a0e8808a2a8e14fedc55ed0ab2ddcc3a325a1c56b4ff3e9b1738e"
        ),
        .binaryTarget(
            name: "Mantis",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/Mantis.xcframework.zip",
            checksum: "c9c3b0e54e2f90ad97ecef13a1c6db614de8ae4e0bcc39295f5d8ccb415d8bbb"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/SDWebImage.xcframework.zip",
            checksum: "39926f083dc9ba7e0b01843e30e0c7fe4c53883325916b07b666036d71b42b92"
        ),
        .binaryTarget(
            name: "SDWebImageSVGCoder",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/SDWebImageSVGCoder.xcframework.zip",
            checksum: "6b4bab23d76f1474acb52214142c0bc3cf3e4f15868787fac1c2844f40194274"
        ),
        .binaryTarget(
            name: "Starscream",
            url: "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/1.5.3/binaries/Starscream.xcframework.zip",
            checksum: "9a37cda3bf1945e84a58d29551f3644946e3fe1625005b901eb455d8b3c05296"
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
