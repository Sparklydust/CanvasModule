//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A text field designed for entering a secret password.
public struct CKTextFieldPassword: View {

  @FocusState private var isFocused: Bool
  @State private var showPassword: Bool = false

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
    TextField("Password", text: $text)
      .opacity(showPassword ? 1 : 0)
      .overlay {
        SecureField("Password", text: $text)
          .opacity(showPassword ? 0 : 1)
      }
      .autocapitalization(.none)
      .disableAutocorrection(true)
      .focused($isFocused)
      .ckTextFieldStyle(
        text: text,
        isFocused: focusState == focusOption,
        leadingIcon: .lock,
        trailingIcon: showPassword ? .show : .hide,
        trailingIconAction: { await toggleShowPassword() }
      )
      .onTapGesture { isFocused = true }
      .onChange(of: focusState) {
        isFocused = $1 == focusOption

        // Enter secured mode when resigning from first responder.
        if $1 != focusOption {
          showPassword = false
        }
      }
      .onChange(of: isFocused) { _, newValue in
        if newValue {
          focusState = focusOption
        } else if focusState == focusOption {
          focusState = .none
        }
      }
  }
}

// MARK: - Actions
private extension CKTextFieldPassword {

  /// Hide or show password within the text field.
  func toggleShowPassword() async {
    showPassword.toggle()
    try? await Task.sleep(for: .microseconds(100))
    isFocused = true
    focusState = focusOption
  }
}

#Preview("Password Text Field - Focused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  return CKTextFieldPassword(
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.init(id: 1))
  )
}

#Preview("Password Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  return CKTextFieldPassword(
    text: $text,
    focusOption: .init(id: 1),
    focusState: .constant(.none)
  )
}
