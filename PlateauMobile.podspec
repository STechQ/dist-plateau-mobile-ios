 Pod::Spec.new do |s|
 s.name          = "PlateauMobile"            
 s.version       = "1.0.5"
 s.summary       = "Plateau Mobile framework"
 s.homepage      = "https://github.com/STechQ"
 s.description   = "Description: Plateau Mobile framework package "
 s.license       = "MIT"
 s.author        = { "Başak Arkan" => "basak.arkan@softtech.com.tr" }
 s.platform      = :ios, "12.0"
 s.ios.vendored_frameworks = 'PlateauMobile.xcframework'
 s.swift_version = "5"
 s.source        = { :git => "https://github.com/STechQ/dist-plateau-mobile-ios.git",  :tag => "#{s.version}"  }
 s.readme = "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/README.md"
 s.pod_target_xcconfig = { 
 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' 
 }
 s.user_target_xcconfig = { 
 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
 }
 end
