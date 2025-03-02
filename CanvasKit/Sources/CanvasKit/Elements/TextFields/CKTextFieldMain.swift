//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// The primary text field used in most cases.
public struct CKTextFieldMain<Focus: Equatable>: View {

  @FocusState private var isFocused: Bool

  let placeholder: String
  @Binding var text: String
  let lineLimit: Int
  let axis: Axis
  let focusOption: Focus
  @Binding var focusState: Focus?
  let trailingIcon: CKIconAsset?
  let trailingIconAction: (() async -> Void)?

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
    axis: Axis = .horizontal,
    lineLimit: Int = 1,
    focusOption: Focus,
    focusState: Binding<Focus?>,
    trailingIcon: CKIconAsset? = .none,
    trailingIconAction: (() async -> Void)? = .none
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
      .ckTextFieldStyleDefault(
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
  CKTextFieldMain(
    placeholder: "Username",
    text: $text,
    axis: .horizontal,
    lineLimit: 1,
    focusOption: 1,
    focusState: .constant(1),
    trailingIcon: .none,
    trailingIconAction: {}
  )
}

#Preview("Main Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldMain(
    placeholder: "Username",
    text: $text,
    axis: .horizontal,
    lineLimit: 1,
    focusOption: 1,
    focusState: .constant(.none),
    trailingIcon: .delete,
    trailingIconAction: { text = String() }
  )
}
