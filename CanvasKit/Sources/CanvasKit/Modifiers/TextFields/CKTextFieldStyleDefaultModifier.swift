//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Applies a custom text field style modifier.
  /// - Parameters:
  ///   - text: The current text in the text field.
  ///   - isFocused: A boolean indicating whether the text field is focused.
  ///   - font: The font style and weight for the text field content.
  ///   - isCode: A boolean indicating if the text field is for code input.
  ///   - leadingIcon: An optional leading icon.
  ///   - trailingIcon: An optional trailing icon.
  ///   - trailingIconAction: An asynchronous action triggered when the trailing icon is tapped.
  /// - Returns: A view modified with the custom text field styling.
  func ckTextFieldStyleDefault(
    text: String,
    isFocused: Bool,
    font: (style: CKFontStyle, weight: CKFontWeight) = (.body, .regular),
    isCode: Bool = false,
    leadingIcon: CKIconAsset? = .none,
    trailingIcon: CKIconAsset? = .none,
    trailingIconAction: (() async -> Void)? = .none
  ) -> some View {
    modifier(
      CKTextFieldStyleDefaultModifier(
        text: text,
        isFocused: isFocused,
        font: font,
        isCode: isCode,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
        trailingIconAction: trailingIconAction
      )
    )
  }
}

/// Applies a custom text field style modifier.
private struct CKTextFieldStyleDefaultModifier: ViewModifier {

  let text: String
  let isFocused: Bool
  let leadingIcon: CKIconAsset?
  let font: (style: CKFontStyle, weight: CKFontWeight)
  let isCode: Bool
  let trailingIcon: CKIconAsset?
  var trailingIconAction: (() async -> Void)?

  /// Initializes a text field style modifier.
  /// - Parameters:
  ///   - text: The current text in the text field.
  ///   - isFocused: A boolean indicating whether the text field is focused.
  ///   - font: The font style and weight for the text field content.
  ///   - isCode: A boolean indicating if the text field is for code input.
  ///   - leadingIcon: An optional leading icon.
  ///   - trailingIcon: An optional trailing icon.
  ///   - trailingIconAction: An asynchronous action triggered when the trailing icon is tapped.
  init(
    text: String,
    isFocused: Bool,
    font: (style: CKFontStyle, weight: CKFontWeight),
    isCode: Bool = false,
    leadingIcon: CKIconAsset?,
    trailingIcon: CKIconAsset?,
    trailingIconAction: (() async -> Void)?
  ) {
    self.text = text
    self.isFocused = isFocused
    self.leadingIcon = leadingIcon
    self.trailingIcon = trailingIcon
    self.trailingIconAction = trailingIconAction
    self.font = font
    self.isCode = isCode
  }

  @Environment(\.colorScheme) var colorScheme

  func body(content: Content) -> some View {
    HStack(spacing: .zero) {
      if let leadingIcon {
        CKIcon(leadingIcon, style: .filled, color: iconColor, size: .medium)
          .ckPadding(.trailing, .x12)
      }

      content
        .lineSpacing(.zero)
        .ckFont(font.style)
        .frame(maxWidth: .infinity)

      if let trailingIcon {
        CKIcon(trailingIcon, style: .filled, color: iconColor, size: .medium)
          .ckPadding(.leading, .x12)
          .onTapGesture { Task { await trailingIconAction?() }}
      }
    }
    .if(isCode) { view in
      view
        .multilineTextAlignment(.center)
        .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fit)
    }
    .frame(maxWidth: isCode ? nil : .infinity, alignment: .leading)
    .ckPadding(.horizontal, isCode ? .x28 : .x18)
    .ckPadding(.vertical, isCode ? .x10 : .x12)
    .foregroundStyle(foregroundColor)
    .background(backgroundColor)
    .cornerRadius(CKSpacing.x14.value)
    .overlay(
      RoundedRectangle(cornerRadius: CKSpacing.x16.value)
        .strokeBorder(mode == .focused ? .ckPrimary900 : .clear, lineWidth: 2)
    )
    .tint(.ckPrimary900)
  }
}

// MARK: - Values
private extension CKTextFieldStyleDefaultModifier {

  /// Determines the mode of the text field based on its focus and content.
  var mode: CKTextFieldMode {
    isFocused ? .focused : (text.isEmpty ? .default : .filled)
  }

  /// The foreground color based on the current mode and color scheme.
  var foregroundColor: Color {
    switch mode {
    case .focused, .filled: colorScheme == .dark ? .ckWhite : .ckGreyscale900
    default: .ckGreyscale500
    }
  }

  /// The background color based on the mode and color scheme.
  var backgroundColor: Color {
    guard mode != .focused else { return .ckTransparentBrown }
    return colorScheme == .dark ? .ckDark2 : .ckGreyscale50
  }

  /// The icon color based on the mode and color scheme.
  var iconColor: Color {
    switch mode {
    case .focused: .ckPrimary900
    case .filled: colorScheme == .dark ? .ckWhite : .ckGreyscale900
    default: .ckGreyscale500
    }
  }
}
