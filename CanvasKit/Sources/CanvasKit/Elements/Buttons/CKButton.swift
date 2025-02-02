//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A type alias for an asynchronous button action closure.
///
/// This represents a function that performs an asynchronous operation when invoked.
public typealias CKButtonAsyncAction = (() async -> Void)

/// A customizable button view that supports various configurations and asynchronous actions.
///
/// ``CKButton`` is a SwiftUI view that creates a button based on a given configuration
/// defined by ``CKButtonType.Attribute``.
public struct CKButton: View {

  let type: CKButtonType.Attribute
  let action: CKButtonAsyncAction

  /// Creates a new instance of ``CKButton`` with the specified configuration and action.
  /// - Parameters:
  ///   - type: The button configuration of type ``CKButtonType.Attribute``.
  ///   - action: An asynchronous closure to perform when the button is pressed.
  public init(
    _ type: CKButtonType.Attribute,
    action: @escaping CKButtonAsyncAction
  ) {
    self.type = type
    self.action = action
  }

  public var body: some View {
    switch type {
    case let .main(title, option, style, variant, isLoading):
      CKButtonMain(
        title: title,
        option: option,
        style: style,
        variant: variant,
        isLoading: isLoading,
        action: action
      )
    case let .icon(icon, option, size):
      CKButtonIcon(
        icon,
        option: option,
        size: size,
        action: action
      )
    case let .socialLogin(option, type):
      CKButtonSocialLogin(
        option: option,
        type: type,
        action: action
      )
    }
  }
}

#Preview("Main Button", traits: .sizeThatFitsLayout) {
  CKButton(
    .main(title: "Continue"),
    action: {}
  )
}

#Preview("Main Button - Loading", traits: .sizeThatFitsLayout) {
  CKButton(
    .main(title: "Continue", isLoading: .constant(true)),
    action: {}
  )
}

#Preview("Icon Button", traits: .sizeThatFitsLayout) {
  CKButton(
    .icon(.addUser, option: .primary, size: 40),
    action: {}
  )
}

#Preview("Social Login Button", traits: .sizeThatFitsLayout) {
  CKButton(
    .socialLogin(option: .apple),
    action: {}
  )
}
