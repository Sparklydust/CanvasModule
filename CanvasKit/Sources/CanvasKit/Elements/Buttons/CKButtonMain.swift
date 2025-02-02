//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A primary button view that supports different styles, variants, and loading states.
///
/// ``CKButtonMain`` is a customizable SwiftUI button designed for primary actions.
struct CKButtonMain: View {

  let title: String
  let option: CKButtonType.MainOption
  let style: CKButtonType.Style
  let variant: CKButtonType.Variant
  @Binding var isLoading: Bool
  let action: CKButtonAsyncAction

  /// Creates a new instance of ``CKButtonMain``.
  /// - Parameters:
  ///   - title: The text displayed on the button.
  ///   - option: The button's main option type.
  ///   - style: The button's visual style.
  ///   - variant: The button's variant, determining icon placement.
  ///   - isLoading: A binding to control the loading state of the button.
  ///   - action: An asynchronous closure executed when the button is tapped.
  init(
    title: String,
    option: CKButtonType.MainOption,
    style: CKButtonType.Style,
    variant: CKButtonType.Variant,
    isLoading: Binding<Bool> = .constant(false),
    action: @escaping CKButtonAsyncAction
  ) {
    self.title = title
    self.option = option
    self.style = style
    self.variant = variant
    _isLoading = isLoading
    self.action = action
  }

  var body: some View {
    Button(title) {
      if !isLoading { Task { await action() }}
    }
    .disabled(isLoading)
    .ckButtonStyleMain(
      option: option,
      style: style,
      variant: variant,
      isLoading: $isLoading
    )
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  CKButtonMain(
    title: "Continue",
    option: .primary,
    style: .filled,
    variant: .default,
    action: {})
}
