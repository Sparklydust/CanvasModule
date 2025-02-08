//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import PhoneNumberKit
import SwiftUI

/// A text field designed for entering a phone number with formatting capability.
public struct CKTextFieldPhone<Focus: Equatable>: View {

  @FocusState private var isFocused: Bool
  @State private var regionID: String = "FR"

  // PhoneNumberKit dependency declarations.
  private let partialFormatter = PartialFormatter()
  private let phoneNumberUtility = PhoneNumberUtility()

  @Binding var text: String
  let focusOption: Focus
  @Binding var focusState: Focus?

  /// Initializes a username text field with focus handling.
  /// - Parameters:
  ///   - text: A binding to the text input.
  ///   - focusOption: The focus behavior of the text field.
  ///   - focusState: A binding to track the current focus state.
  public init(
    text: Binding<String>,
    focusOption: Focus,
    focusState: Binding<Focus?>
  ) {
    _text = text
    self.focusOption = focusOption
    _focusState = focusState
  }

  public var body: some View {
    HStack {
      Text(getFlag(for: regionID))
      TextField("+33", text: $text)
        .keyboardType(.phonePad)
        .focused($isFocused)
    }
    .ckTextFieldStyleDefault(
      text: text,
      isFocused: focusState == focusOption
    )
    .onTapGesture { isFocused = true }
    .onChange(of: text) { try? processPhoneNumber($1) }
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

// MARK: - Actions
private extension CKTextFieldPhone {

  /// Parses and formats a phone number while extracting the region ID.
  /// - Parameter number: The phone number to process and format.
  func processPhoneNumber(_ number: String) throws {
    let formattedNumber = partialFormatter.formatPartial(number)
    let phoneNumber = try phoneNumberUtility.parse(formattedNumber)
    text = phoneNumberUtility.format(phoneNumber, toType: .international)
    regionID = phoneNumber.regionID ?? "FR"
  }

  /// Returns the flag emoji for a given country code.
  func getFlag(for countryId: String) -> String {
    let base: UInt32 = 127397
    return countryId
      .unicodeScalars
      .compactMap { UnicodeScalar(base + $0.value) }
      .map { String($0) }
      .joined()
  }
}

#Preview("Phone Text Field - Focused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldPhone(
    text: $text,
    focusOption: 1,
    focusState: .constant(1)
  )
}

#Preview("Phone Text Field - Unfocused", traits: .sizeThatFitsLayout) {
  @Previewable @State var text = String()
  CKTextFieldPhone(
    text: $text,
    focusOption: 1,
    focusState: .constant(.none)
  )
}
