//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A text field for entering an email address.
public struct CKTextFieldEmail: View {

  @FocusState private var isFocused: Bool

  @Binding var text: String
  let focusOption: TextFieldFocus
  @Binding var focusState: TextFieldFocus?

  /// Initializes a new email text field with a predefined focus behavior.
  /// - Parameters:
  ///   - text: The binding for the email text input.
  ///   - focusOption: The focus option associated with this text field.
  ///   - focusState: The binding for the global focus state, allowing focus coordination across multiple fields.
  public init(
    text: Binding<String>,
    focusOption: TextFieldFocus,
    focusState: Binding<TextFieldFocus?>
  ) {
    _text = text
    self.focusOption = focusOption
    _focusState = focusState
  }

  public var body: some View {
    TextField("Email", text: $text)
      .keyboardType(.emailAddress)
      .autocapitalization(.none)
      .disableAutocorrection(true)
      .focused($isFocused)
      .ckTextFieldStyle(
        text: text,
        isFocused: focusState == focusOption,
        leadingIcon: .message
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

#Preview("Email Text Field - Focused", traits: .sizeThatFitsLayout) {
  CKTextFieldEmail(
    text: .constant(String()),
    focusOption: .init(id: 1),
    focusState: .constant(.init(id: 1))
  )
}

#Preview("Email Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  CKTextFieldEmail(
    text: .constant(String()),
    focusOption: .init(id: 1),
    focusState: .constant(.none)
  )
}
