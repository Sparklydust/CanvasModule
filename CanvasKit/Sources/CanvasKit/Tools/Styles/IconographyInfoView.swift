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
  /// The style of the icon, defaulting to `.regular`
  let style: CKIconStyle

  public init(
    _ asset: CKIconAsset,
    style: CKIconStyle = .regular
  ) {
    self.asset = asset
    self.style = style
  }

  public var body: some View {
    VStack(spacing: 4) {
      CKIcon(asset, style: style)
        .frame(width: 40, height: 40)

      Text(asset.rawValue)
        .font(.caption)
        .foregroundStyle(.secondary)
        .lineLimit(1)
        .minimumScaleFactor(0.7)
        .frame(maxWidth: 50)
    }
  }
}

#Preview {
  IconographyInfoView(.apple)
}
