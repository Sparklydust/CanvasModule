//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A button designed for social login.
public struct CKButtonSocialLogin: View {

  @Environment(\.colorScheme) var colorScheme

  let option: CKButtonType.SocialLoginOption
  let type: CKButtonType.SocialLoginOption.ButtonType
  let action: (() async -> Void)
  
  /// Create an instance of ``CKButtonSocialLogin``.
  /// - Parameters:
  ///   - option: The social login option associated with the button.
  ///   - type: The type of button style used for the social login.
  ///   - action: The action to execute when the button is tapped.
  public init(
    option: CKButtonType.SocialLoginOption,
    type: CKButtonType.SocialLoginOption.ButtonType,
    action: @escaping () async -> Void
  ) {
    self.option = option
    self.type = type
    self.action = action
  }

  public var body: some View {
    Button(option.title) {
      Task { await action() }
    }
    .ckButtonStyleSocialLogin(
      option: option,
      type: type
    )
  }
}

#Preview("Default", traits: .sizeThatFitsLayout) {
  CKButtonSocialLogin(
    option: .apple,
    type: .default,
    action: {}
  )
}

#Preview("Icon", traits: .sizeThatFitsLayout) {
  CKButtonSocialLogin(
    option: .facebook,
    type: .icon,
    action: {}
  )
}
