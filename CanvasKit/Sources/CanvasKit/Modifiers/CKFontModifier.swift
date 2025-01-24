//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension View {

  /// Adds the ``CanvasKit`` font style to a view.
  /// - Parameters:
  ///   - style: The ``CKFontStyle`` defining the font style to apply.
  ///   - weight: An optional ``CKFontWeight`` specifying the font weight. Defaults to `nil`, which uses the
  ///   style's `defaultFontWeight`.
  /// - Returns: A modified view with the specified font style and weight.
  func ckFont(
    _ style: CKFontStyle,
    weight: CKFontWeight? = .none
  ) -> some View {
    modifier(CKFontModifier(style: style, weight: weight))
  }
}

/// Adds the ``CanvasKit`` font style to a view.
private struct CKFontModifier: ViewModifier {

  /// The font style to apply.
  let style: CKFontStyle
  /// The optional font weight to apply. If `nil`, the style's default weight is used.
  let weight: CKFontWeight?

  func body(content: Content) -> some View {

    let fontName = weight?.fontName ?? style.defaultFontWeight.fontName
    let font = Font.custom(fontName, size: style.size, relativeTo: style.textStyle)
    let lineSpacing = (style.lineHeightMultiplier * style.size) - style.size

    content
      .font(font)
      .lineSpacing(lineSpacing)
      .padding(.vertical, lineSpacing / 2)
  }
}
