//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Applies a plain text field style to the view.
  /// - Parameters:
  ///   - title: The title displayed above the text field.
  ///   - text: The text content of the field.
  ///   - isFocused: A Boolean indicating whether the field is focused.
  ///   - trailingIconAction: An optional async action triggered by the trailing icon.
  /// - Returns: A modified view with the plain text field style.
  func ckTextFieldStylePlain(
    title: String,
    text: String,
    isFocused: Bool,
    trailingIconAction: ((Bool) async -> Void)?
  ) -> some View {
    modifier(
      CKTextFieldStylePlainModifier(
        title: title,
        text: text,
        isFocused: isFocused,
        trailingIconAction: trailingIconAction
      )
    )
  }
}

/// Applies a plain text field style to the view.
private struct CKTextFieldStylePlainModifier: ViewModifier {

  @Environment(\.colorScheme) private var colorScheme
  @State private var isArrowDown: Bool = false

  let title: String
  let text: String
  let isFocused: Bool
  let trailingIconAction: ((Bool) async -> Void)?

  /// Initializes the plain text field style modifier.
  /// - Parameters:
  ///   - title: The title displayed above the text field.
  ///   - text: The text content of the field.
  ///   - isFocused: A Boolean indicating whether the field is focused.
  ///   - trailingIconAction: An optional async action triggered by the trailing icon.
  init(
    title: String,
    text: String,
    isFocused: Bool,
    trailingIconAction: ((Bool) async -> Void)?
  ) {
    self.text = text
    self.title = title
    self.isFocused = isFocused
    self.trailingIconAction = trailingIconAction
  }

  func body(content: Content) -> some View {
    VStack(alignment: .leading, spacing: .zero) {
      Text(title)
        .ckFont(.body, weight: .bold)
        .foregroundStyle(colorScheme == .dark ? .ckWhite : .ckGreyscale900)
        .ckPadding(.bottom, .x16)

      HStack(spacing: .zero) {
        content
          .lineSpacing(.zero)
          .ckFont(.headline, weight: .bold)

        if let trailingIconAction {
          CKIcon(.arrowRight, style: .regular, color: iconColor)
            .rotationEffect(.degrees(isArrowDown ? 90 : 0))
            .onTapGesture {
              withAnimation { isArrowDown.toggle() }
              Task { await trailingIconAction(isArrowDown) }
            }
        }
      }
      .ckPadding(.bottom, .x8)

      CKDivider(color: .ckPrimary900)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .foregroundStyle(foregroundColor)
  }
}

private extension CKTextFieldStylePlainModifier {

  /// Determines the text field mode.
  var mode: CKTextFieldMode {
    isFocused ? .focused : (text.isEmpty ? .default : .filled)
  }

  /// Determines the foreground color.
  var foregroundColor: Color {
    switch mode {
    case .focused: colorScheme == .dark ? .ckDark4 : .ckGreyscale500
    case .filled: colorScheme == .dark ? .ckWhite : .ckGreyscale900
    default: colorScheme == .dark ? .ckDark4 : .ckGreyscale500
    }
  }

  /// Determines the color of the trailing icon.
  var iconColor: Color {
    switch mode {
    case .filled: colorScheme == .dark ? .ckWhite : .ckGreyscale900
    default: .ckGreyscale500
    }
  }
}
