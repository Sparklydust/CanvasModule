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

  /// Initializes a username text field with focus handling.
  /// - Parameters:
  ///   - text: A binding to the text input.
  ///   - focusOption: The focus behavior of the text field.
  ///   - focusState: A binding to track the current focus state.
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
      .ckTextFieldStyleDefault(
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
  @Previewable @State var text = String()
  CKTextFieldEmail(
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.init(id: 1))
  )
}

#Preview("Email Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldEmail(
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.none)
  )
}
