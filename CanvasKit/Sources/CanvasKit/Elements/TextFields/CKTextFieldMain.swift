//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// The primary text field used in most cases, providing focus management and customization.
///
/// ``CKTextFieldMain`` serves as the default text input component. It is designed to be the
/// base implementation for standard text input fields in the application.
public struct CKTextFieldMain: View {

  @FocusState private var isFocused: Bool

  let placeholder: String
  @Binding var text: String
  let lineLimit: Int
  let axis: Axis
  let focusOption: TextFieldFocus
  @Binding var focusState: TextFieldFocus?
  let trailingIcon: CKIconAsset?
  let trailingIconAction: () async -> Void

  /// Initializes a primary text field with customizable properties.
  /// - Parameters:
  ///   - placeholder: The placeholder text displayed when the field is empty.
  ///   - text: The binding for the text input.
  ///   - axis: The axis that determines the text field's layout direction.
  ///   - lineLimit: The maximum number of lines allowed in the text field.
  ///   - focusOption: The focus behavior of the text field.
  ///   - focusState: A binding to track the current focus state.
  ///   - trailingIcon: An optional trailing icon for additional interaction.
  ///   - trailingIconAction: An asynchronous action triggered by the trailing icon.
  public init(
    placeholder: String,
    text: Binding<String>,
    axis: Axis,
    lineLimit: Int,
    focusOption: TextFieldFocus,
    focusState: Binding<TextFieldFocus?>,
    trailingIcon: CKIconAsset?,
    trailingIconAction: @escaping () async -> Void
  ) {
    self.placeholder = placeholder
    _text = text
    self.axis = axis
    self.lineLimit = lineLimit
    self.focusOption = focusOption
    _focusState = focusState
    self.trailingIcon = trailingIcon
    self.trailingIconAction = trailingIconAction
  }

  public var body: some View {
    TextField(placeholder, text: $text, axis: axis)
      .focused($isFocused)
      .ckTextFieldStyle(
        text: text,
        isFocused: focusState == focusOption,
        trailingIcon: trailingIcon,
        trailingIconAction: trailingIconAction
      )
      .lineLimit(lineLimit)
      .focused($isFocused)
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

#Preview("Main Text Field - Focused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  return CKTextFieldMain(
    placeholder: "Username",
    text: $text,
    axis: .horizontal,
    lineLimit: 1,
    focusOption: .init(id: 1),
    focusState: .constant(.init(id: 1)),
    trailingIcon: .none,
    trailingIconAction: {}
  )
}

#Preview("Main Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  return CKTextFieldMain(
    placeholder: "Username",
    text: $text,
    axis: .horizontal,
    lineLimit: 1,
    focusOption: .init(id: 1),
    focusState: .constant(.none),
    trailingIcon: .none,
    trailingIconAction: {}
  )
}
