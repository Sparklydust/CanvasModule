//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A text field designed for entering passcode with a completion detection.
public struct CKTextFieldPasscode: View {

  @FocusState private var isFocused: Bool
  @State private var focusState: TextFieldPasscodeFocus?
  let initialFocusOption = TextFieldPasscodeFocus(id: .zero)

  let length: Int
  @Binding var text: String
  let codeCompletion: (_ code: String) -> Void

  /// Initializes a passcode text field with focus handling.
  /// - Parameters:
  ///   - length: The required passcode length.
  ///   - text: A binding to the text input.
  ///   - codeCompletion: Called when the passcode reaches the required length.
  public init(
    length: Int = 4,
    text: Binding<String>,
    codeCompletion: @escaping (_ code: String) -> Void
  ) {
    self.length = length
    _text = text
    self.codeCompletion = codeCompletion
  }

  public var body: some View {
    HStack {
      ForEach(.zero..<length, id: \.self) { id in
        TextField("0", text: .constant(text.character(at: id)))
          .disabled(true)
          .keyboardType(.numberPad)
          .ckTextFieldStyleDefault(
            text: text,
            isFocused: focusState == focusFor(id),
            font: (.headline, .bold),
            isCode: true
          )
      }
    }
    .overlay {
      TextField(String(), text: $text.limited(to: length))
        .ckFont(.headline, weight: .bold)
        .textContentType(.oneTimeCode)
        .keyboardType(.numberPad)
        .foregroundColor(.clear)
        .opacity(0.1)
        .tint(.clear)
        .focused($isFocused)
    }
    .contentShape(Rectangle())
    .aspectRatio(1, contentMode: .fit)
    .onChange(of: isFocused) { focusState = updatedFocusState() }
    .onChange(of: text) { _, _ in
      focusState = focusFor(text.count)
      handleCodeCompletion()
    }
  }
}

// MARK: - Actions
private extension CKTextFieldPasscode {

  /// Returns a `TextFieldFocus` object for the given index.
  /// - Parameter id: The index of the passcode character.
  func focusFor(_ id: Int) -> TextFieldPasscodeFocus {
    TextFieldPasscodeFocus(id: id)
  }

  /// Updates the focus state based on the text input.
  func updatedFocusState() -> TextFieldPasscodeFocus? {
    isFocused ? focusFor(min(text.count, length - 1)) : nil
  }

  /// Triggers the completion closure when the passcode is fully entered.
  func handleCodeCompletion() {
    guard text.count == length else { return }
    isFocused = false
    codeCompletion(text)
  }
}

#Preview("Passcode Text Field - Focused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldPasscode(
    text: $text,
    codeCompletion: { _ in }
  )
}

#Preview("Passcode Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldPasscode(
    text: $text,
    codeCompletion: { _ in }
  )
}
