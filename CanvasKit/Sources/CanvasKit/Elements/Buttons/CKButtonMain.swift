//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A primary button view that supports different styles, variants, and loading states.
///
/// ``CKButtonMain`` is a customizable SwiftUI button designed for primary actions.
public struct CKButtonMain: View {

  let title: String
  let option: CKButtonType.MainOption
  let variant: CKButtonType.Variant
  @Binding var isLoading: Bool
  let action: (() async -> Void)

  /// Creates a new instance of ``CKButtonMain``.
  /// - Parameters:
  ///   - title: The text displayed on the button.
  ///   - option: The button's main option type.
  ///   - variant: The button's variant, determining icon placement.
  ///   - isLoading: A binding to control the loading state of the button.
  ///   - action: An asynchronous closure executed when the button is tapped.
  public init(
    title: String,
    option: CKButtonType.MainOption = .primary,
    variant: CKButtonType.Variant = .default,
    isLoading: Binding<Bool> = .constant(false),
    action: @escaping (() async -> Void)
  ) {
    self.title = title
    self.option = option
    self.variant = variant
    _isLoading = isLoading
    self.action = action
  }

  public var body: some View {
    Button(title) {
      if !isLoading { Task { await action() }}
    }
    .disabled(isLoading)
    .ckButtonStyleMain(
      option: option,
      variant: variant,
      isLoading: $isLoading
    )
  }
}

#Preview("Primary", traits: .sizeThatFitsLayout) {
  CKButtonMain(
    title: "Continue",
    option: .primary,
    variant: .default,
    action: {}
  )
}

#Preview("Secondary", traits: .sizeThatFitsLayout) {
  CKButtonMain(
    title: "Cancel",
    option: .secondary,
    variant: .default,
    action: {}
  )
}
