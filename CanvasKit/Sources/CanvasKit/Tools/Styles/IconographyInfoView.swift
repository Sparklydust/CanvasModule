//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays an icon with its corresponding name.
///
/// Used to showcase icons in the design system.
public struct IconographyInfoView: View {

  /// The icon asset to display.
  let asset: CKIconAsset
  /// The style of the icon, defaulting to `.regular`.
  let style: CKIconStyle
  /// The color of the icon, default is `ckPrimary900`.
  let color: Color?

  public init(
    _ asset: CKIconAsset,
    style: CKIconStyle = .regular,
    color: Color? = .ckPrimary900
  ) {
    self.asset = asset
    self.style = style
    self.color = color
  }

  public var body: some View {
    VStack(spacing: 4) {
      CKIcon(asset, style: style, color: color)
        .frame(width: 40, height: 40)

      Text(asset.rawValue)
        .font(.caption)
        .foregroundStyle(.secondary)
        .lineLimit(1)
        .minimumScaleFactor(0.4)
        .frame(maxWidth: 50)
    }
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  IconographyInfoView(.home)
}
