//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Applies a custom social login button style.
  /// - Parameters:
  ///   - option: The social login option defining the button's appearance and icon.
  ///   - type: The type of button style used.
  /// - Returns: A view with the applied button style.
  func ckButtonStyleSocialLogin(
    option: CKButtonType.SocialLoginOption,
    type: CKButtonType.SocialLoginOption.ButtonType
  ) -> some View {
    buttonStyle(
      CKButtonStyleSocialLoginModifier(
        option: option,
        type: type
      )
    )
  }
}

/// Applies a custom social login button style.
private struct CKButtonStyleSocialLoginModifier: ButtonStyle {

  @Environment(\.colorScheme) var colorScheme

  /// The social login option associated with the button.
  let option: CKButtonType.SocialLoginOption
  /// The type of button style used for the social login.
  let type: CKButtonType.SocialLoginOption.ButtonType

  func makeBody(configuration: Configuration) -> some View {
    CKIcon(option.icon, color: .none)
      .if(type == .default) { view in
        HStack(spacing: .zero) {
          Spacer()
          view
          Spacer()
        }
      }
      .ckPadding(.vertical, .x14)
      .ckPadding(.horizontal, type == .icon ? .x32 : CKSpacing.none)
      .foregroundStyle(foregroundColor)
      .background(
        RoundedRectangle(cornerRadius: CKSpacing.x16.value)
          .fill(configuration.isPressed ? onPressBackgroundColor : backgroundColor)
      )
      .overlay {
        RoundedRectangle(cornerRadius: CKSpacing.x16.value)
          .stroke(lineWidth: 1.4)
          .fill(borderColor)
      }
  }
}

// MARK: - Values
extension CKButtonStyleSocialLoginModifier {

  /// The background color based on the color scheme.
  var backgroundColor: Color {
    switch colorScheme {
    case .light: .ckWhite
    case .dark: .ckDark2
    @unknown default: .ckWhite
    }
  }

  /// The border color based on the color scheme.
  var borderColor: Color {
    switch colorScheme {
    case .light: .ckGreyscale200
    case .dark: .ckDark4
    @unknown default: .ckGreyscale200
    }
  }

  /// The background color when the button is pressed.
  var onPressBackgroundColor: Color {
    switch colorScheme {
    case .light: .ckGreyscale200
    case .dark: .ckDark1
    @unknown default: .ckWhite
    }
  }

  /// The foreground color based on the color scheme.
  var foregroundColor: Color {
    switch colorScheme {
    case .light: .ckGreyscale900
    case .dark: .ckWhite
    @unknown default: .ckWhite
    }
  }
}
