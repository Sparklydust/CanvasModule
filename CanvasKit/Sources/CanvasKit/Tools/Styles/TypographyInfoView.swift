//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays information about a specific typography style and weight.
public struct TypographyInfoView: View {

  /// The font style to display.
  let font: CKFontStyle
  /// The weight of the font.
  let weight: CKFontWeight?
  /// The name of the typography style.
  let title: String
  /// A description of the style, including its weight and size.
  let subtitle: String

  public init(
    font: CKFontStyle,
    weight: CKFontWeight?,
    title: String,
    subtitle: String
  ) {
    self.font = font
    self.weight = weight
    self.title = title
    self.subtitle = subtitle
  }

  public var body: some View {
    VStack(alignment: .leading) {
      Text(title)
        .ckFont(font, weight: weight)

      Text(subtitle)
        .ckFont(.callout)
        .foregroundStyle(.ckGreyscale500)
    }
  }
}
