 Pod::Spec.new do |s|
 s.name          = "PlateauMobile"            
 s.version       = "1.0.16"
 s.summary       = "Plateau Mobile framework"
 s.homepage      = "https://github.com/STechQ"
 s.description   = "Description: Plateau Mobile framework package "
 s.license       = "MIT"
 s.author        = { "Başak Arkan" => "basak.arkan@softtech.com.tr" }
 s.platform      = :ios, "14.0"
 s.ios.vendored_frameworks = 'PlateauMobile.xcframework'
 s.swift_version = "5"
 s.source        = { :git => "https://github.com/STechQ/dist-plateau-mobile-ios.git",  :tag => "#{s.version}"  }
 s.readme = "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/README.md"
 s.dependency 'Starscream', '~> 4.0.6'
 s.dependency 'lottie-ios', '4.5.0'      # örnek: sabit versiyon (pin)
 s.dependency 'DGCharts',   '~> 5.1'
 s.dependency 'Mantis',     '~> 2.23.0'
 s.dependency 'AppAuth',    '~> 1.7.6'
 end
