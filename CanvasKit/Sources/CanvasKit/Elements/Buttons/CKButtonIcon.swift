//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A button view that displays an icon and executes an asynchronous action when tapped.
public struct CKButtonIcon: View {

  let asset: CKIconAsset
  let option: CKButtonType.IconOption
  let size: CGFloat
  let action: (() async -> Void)

  /// Creates an instance of ``CKButtonIcon``.
  /// - Parameters:
  ///   - asset: The icon to display inside the button.
  ///   - option: The styling option for the button.
  ///   - size: The size of the icon.
  ///   - action: An asynchronous closure executed when the button is pressed.
  public init(
    _ asset: CKIconAsset,
    option: CKButtonType.IconOption,
    size: CGFloat,
    action: @escaping (() async -> Void)
  ) {
    self.asset = asset
    self.option = option
    self.size = size
    self.action = action
  }

  public var body: some View {
    Button(String()) {
      Task { await action() }
    }
    .ckButtonStyleIcon(
      asset: asset,
      option: option,
      size: size
    )
  }
}

#Preview("Primary", traits: .sizeThatFitsLayout) {
  CKButtonIcon(
    .home,
    option: .primary,
    size: 20,
    action: {}
  )
}

#Preview("Secondary", traits: .sizeThatFitsLayout) {
  CKButtonIcon(
    .home,
    option: .secondary,
    size: 20,
    action: {}
  )
}

#Preview("Tertirary", traits: .sizeThatFitsLayout) {
  CKButtonIcon(
    .home,
    option: .tertiary,
    size: 20,
    action: {}
  )
}
