//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays an icon from ``CKIconAsset``.
struct CKIcon: View {

  @ScaledMetric private var scaleMetric: CGFloat = 1

  let asset: CKIconAsset
  let color: Color
  let size: CKImageSize

  enum CKImageSize {
    case small, medium, large
    case custom(CGFloat)

    var value: CGFloat {
      switch self {
      case .small: 16
      case .medium: 24
      case .large: 32
      case .custom(let size): size
      }
    }
  }

  /// Initializes a ``CKIcon`` with a given asset, color, and size.
  /// - Parameters:
  ///   - asset: The icon asset to display.
  ///   - color: The color of the icon. Defaults to `.ckPrimary900`.
  ///   - size: The size of the icon. Defaults to `.medium`.
  init(
    _ asset: CKIconAsset,
    color: Color = .ckPrimary900,
    size: CKImageSize = .medium
  ) {
    self.asset = asset
    self.color = color
    self.size = size
  }

  var body: some View {
    asset.image
      .resizable()
      .frame(
        width: size.value * scaleMetric,
        height: size.value * scaleMetric
      )
      .foregroundStyle(color)
  }
}

#Preview {
  CKIcon(.apple)
}
