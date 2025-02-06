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
      .foregroundStyle(colorScheme == .dark ? .ckWhite : .ckGreyscale900)
      .background(
        RoundedRectangle(cornerRadius: CKSpacing.x16.value)
          .fill(
            configuration.isPressed
            ? colorScheme == .dark ? .ckDark1 : .ckGreyscale200
            : colorScheme == .dark ? .ckDark2 : .ckWhite)
      )
      .overlay {
        RoundedRectangle(cornerRadius: CKSpacing.x16.value)
          .stroke(lineWidth: 1.4)
          .fill(colorScheme == .dark ? .ckDark4 : .ckGreyscale200)
      }
  }
}
