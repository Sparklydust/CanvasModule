//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays an icon from ``CKIconAsset``.
public struct CKIcon: View {

  @ScaledMetric private var scaleMetric: CGFloat = 1

  public enum CKImageSize {
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

  let asset: CKIconAsset
  let style: CKIconStyle
  let color: Color
  let size: CKImageSize

  /// Initializes a ``CKIcon`` with a given asset, color, and size.
  /// - Parameters:
  ///   - asset: The icon asset to display.
  ///   - style: The `regular` or `filled` style for the icon if available. Defaults to `.regular`.
  ///   - color: The color of the icon. Defaults to `.ckPrimary900`.
  ///   - size: The size of the icon. Defaults to `.medium`.
  public init(
    _ asset: CKIconAsset,
    style: CKIconStyle = .regular,
    color: Color = .ckPrimary900,
    size: CKImageSize = .medium
  ) {
    self.asset = asset
    self.style = style
    self.color = color
    self.size = size
  }

  public var body: some View {
    asset.image(for: style)
      .resizable()
      .frame(
        width: size.value * scaleMetric,
        height: size.value * scaleMetric
      )
      .foregroundStyle(color)
      .accessibilityHidden(true)
  }
}

#Preview {
  CKIcon(.apple)
}
