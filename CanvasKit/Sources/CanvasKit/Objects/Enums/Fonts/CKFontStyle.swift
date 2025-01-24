//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Represents the font styles used in the application.
public enum CKFontStyle {

  /// A large title style, typically used for prominent headings.
  case largeTitle
  /// A title style, used for main titles.
  case title
  /// A secondary title style.
  case title2
  /// A tertiary title style.
  case title3
  /// A headline style, used for section headings or emphasis.
  case headline
  /// A subheadline style, used for less prominent headings or subheadings.
  case subheadline
  /// A body style, used for main content text.
  case body
  /// A callout style, used for highlighting text.
  case callout
  /// A footnote style, used for smaller, supporting text.
  case footnote
  /// A caption style, used for small annotations or descriptions.
  case caption
  /// A secondary caption style, smaller than the primary caption.
  case caption2

  /// The associated ``UIFont.TextStyle`` for the font style.
  ///
  /// This value is used to map the custom font style to its corresponding
  /// dynamic text style for accessibility support.
  var textStyle: Font.TextStyle {
    switch self {
    case .largeTitle: .largeTitle
    case .title: .title
    case .title2: .title2
    case .title3: .title3
    case .headline: .headline
    case .subheadline: .subheadline
    case .body: .body
    case .callout: .callout
    case .footnote: .footnote
    case .caption: .caption
    case .caption2: .caption2
    }
  }

  /// The default font weight for the font style.
  var defaultFontWeight: CKFontWeight {
    switch self {
    case .largeTitle: .bold
    case .title: .regular
    case .title2: .regular
    case .title3: .regular
    case .headline: .semiBold
    case .subheadline: .regular
    case .body: .regular
    case .callout: .regular
    case .footnote: .regular
    case .caption: .regular
    case .caption2: .regular
    }
  }

  /// The line height multiplier associated to the font style.
  ///
  /// This value defines the proportional spacing for each line of text relative to the font size.
  var lineHeightMultiplier: CGFloat {
    switch self {
    default: 1.6
    }
  }

  /// The predefined font size for the font style.
  var size: CGFloat {
    switch self {
    case .largeTitle: 48
    case .title: 40
    case .title2: 32
    case .title3: 24
    case .headline: 20
    case .subheadline: 18
    case .body: 18
    case .callout: 16
    case .footnote: 14
    case .caption: 12
    case .caption2: 10
    }
  }
}
