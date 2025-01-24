//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

/// Represents the font weights used in the application.
public enum CKFontWeight {

  /// A bold font weight, used for strong emphasis.
  case bold
  /// A medium font weight, slightly lighter than bold.
  case medium
  /// A regular font weight, typically used for body text.
  case regular
  /// A semi-bold font weight, between regular and bold.
  case semiBold

  /// The font name associated with the font weight.
  ///
  /// This property provides the specific font name for the selected weight,
  /// ensuring consistency with the design system's font family.
  var fontName: FontConvertible {
    switch self {
    case .bold: FontFamily.Urbanist.bold
    case .medium: FontFamily.Urbanist.medium
    case .regular: FontFamily.Urbanist.regular
    case .semiBold: FontFamily.Urbanist.semiBold
    }
  }
}
