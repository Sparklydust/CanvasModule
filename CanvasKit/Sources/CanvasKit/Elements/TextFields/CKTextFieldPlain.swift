//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A plain text field with optional focus handling and a trailing icon action.
public struct CKTextFieldPlain: View {

  @FocusState private var isFocused: Bool

  let title: String
  let placeholder: String
  @Binding var text: String
  let focusOption: TextFieldFocus
  @Binding var focusState: TextFieldFocus?
  let trailingIconAction: ((Bool) async -> Void)?

  /// Initializes a plain text field with a title, placeholder, and focus behavior.
  /// - Parameters:
  ///   - title: The title displayed above the text field.
  ///   - placeholder: The placeholder text shown inside the text field.
  ///   - text: A binding to the text input.
  ///   - focusOption: The focus behavior of the text field.
  ///   - focusState: A binding to track the current focus state.
  ///   - trailingIconAction: An optional async action triggered by the trailing icon.
  public init(
    title: String,
    placeholder: String = String(),
    text: Binding<String>,
    focusOption: TextFieldFocus,
    focusState: Binding<TextFieldFocus?>,
    trailingIconAction: ((Bool) async -> Void)? = nil
  ) {
    self.title = title
    self.placeholder = placeholder
    _text = text
    self.focusOption = focusOption
    _focusState = focusState
    self.trailingIconAction = trailingIconAction
  }

  public var body: some View {
    TextField(placeholder, text: $text)
      .focused($isFocused)
      .ckTextFieldStylePlain(
        title: title,
        text: text,
        isFocused: focusState == focusOption,
        trailingIconAction: trailingIconAction
      )
      .onTapGesture { isFocused = true }
      .onChange(of: focusState) { isFocused = $1 == focusOption }
      .onChange(of: isFocused) { _, newValue in
        if newValue {
          focusState = focusOption
        } else if focusState == focusOption {
          focusState = .none
        }
      }
  }
}

#Preview("Plain Text Field - Focused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldPlain(
    title: "Username",
    placeholder: "Enter your username",
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.init(id: 1)),
    trailingIconAction: { _ in })
}

#Preview("Plain Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldPlain(
    title: "Username",
    placeholder: "Enter your username",
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.none),
    trailingIconAction: { _ in })
}
