//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A button designed for social login.
struct CKButtonSocialLogin: View {

  @Environment(\.colorScheme) var colorScheme

  /// The social login option associated with the button.
  let option: CKButtonType.SocialLoginOption
  /// The type of button style used for the social login.
  let type: CKButtonType.SocialLoginOption.ButtonType
  /// The action to execute when the button is tapped.
  let action: CKButtonAsyncAction

  var body: some View {
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
