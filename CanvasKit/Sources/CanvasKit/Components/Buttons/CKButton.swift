//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A customizable button view that supports various configurations and asynchronous actions.
///
/// ``CKButton`` is a SwiftUI view that creates a button based on a given configuration
/// defined by ``CKButtonType.Attribute``.
public struct CKButton: View {

  public typealias CKButtonAction = (() async -> Void)

  let type: CKButtonType.Attribute
  let action: CKButtonAction

  /// Creates a new instance of ``CKButton`` with the specified configuration and action.
  /// - Parameters:
  ///   - type: The button configuration of type ``CKButtonType.Attribute``.
  ///   - action: An asynchronous closure to perform when the button is pressed.
  public init(
    _ type: CKButtonType.Attribute,
    action: @escaping CKButtonAction
  ) {
    self.type = type
    self.action = action
  }

  public var body: some View {
    switch type {
    case let .main(title, option, style, variant, isLoading):
      EmptyView()
    case let .icon(icon, option, dimension):
      EmptyView()
    case let .socialLogin(option, type):
      EmptyView()
    }
  }
}

#Preview("Main Button") {
  CKButton(.main(title: "Continue")) {}
}

#Preview("Main Button - Loading") {
  CKButton(.main(title: "Continue", isLoading: .constant(true))) {}
}

#Preview("Icon Button") {
  CKButton(.icon(.addUser, option: .primary, dimension: 40)) {}
}

#Preview("Social Login Button") {
  CKButton(.socialLogin(option: .apple)) {}
}
