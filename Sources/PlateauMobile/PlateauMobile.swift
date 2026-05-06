// Bu dosya SPM'in target'ı tanıması için gereklidir.
// PlateauMobile binary target'ını ve bağımlılıklarını bir araya getirir.

import Foundation

// Re-export bağımlılıklar
@_exported import PlateauMobile
@_exported import Starscream
@_exported import Lottie
@_exported import DGCharts
@_exported import Mantis
@_exported import AppAuth
@_exported import SDWebImage
@_exported import SDWebImageSVGCoder

public struct PlateauMobileVersion {
    public static let version = "1.5.1"
}
