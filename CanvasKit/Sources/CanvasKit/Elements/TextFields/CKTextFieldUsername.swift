//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A text field designed for entering a username.
public struct CKTextFieldUsername: View {

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
    TextField("Username", text: $text)
      .autocapitalization(.none)
      .disableAutocorrection(true)
      .focused($isFocused)
      .ckTextFieldStyleDefault(
        text: text,
        isFocused: focusState == focusOption,
        leadingIcon: .profile
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

#Preview("Username Text Field - Focused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldUsername(
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.init(id: 1)
                         )
  )
}

#Preview("Username Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldUsername(
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.none)
  )
}
