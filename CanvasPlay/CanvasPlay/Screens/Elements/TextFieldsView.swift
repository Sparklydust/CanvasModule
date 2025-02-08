//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Displays the available text fields from the ``CanvasKit`` package.
struct TextFieldsView: View {

  @State private var focusState: FocusOption? = .none
  private enum FocusOption: Equatable {
    case email, mainNoAction, mainAction, password, phone, plain, username
  }
  @State private var textEmail = String()
  @State private var textMainHorizontal = String()
  @State private var textMainVertical = String()
  @State private var textPasscode = String()
  @State private var textPassword = String()
  @State private var textPhone = String()
  @State private var textPlain = String()
  @State private var textUsername = String()

  var body: some View {
    List {
      SecondarySection("Email") { emailTextField }

      SecondarySection("Main") { mainTextField }

      SecondarySection("Passcode") { passcodeTextField }

      SecondarySection("Password") { passwordTextField }

      SecondarySection("Phone") { phoneTextField }

      SecondarySection("Plain") { plainTextField }

      SecondarySection("Username") { usernameTextField }
    }
    .listStyle(.plain)
    .cpSecondaryNavigationStack(title: "Text Fields")
  }
}

extension TextFieldsView {

  // MARK: - Email Text Field
  var emailTextField: some View {
    ElementInfoView(title: "Email Text Field") {
      CKTextFieldEmail(
        text: $textEmail,
        focusOption: .email,
        focusState: $focusState
      )
    }
  }

  // MARK: - Main Text Field
  var mainTextField: some View {
    VStack {
      ElementInfoView(title: "Main Text Field - No Icon with Action") {
        CKTextFieldMain(
          placeholder: "First Name",
          text: $textMainHorizontal,
          focusOption: .mainNoAction,
          focusState: $focusState
        )
      }

      ElementInfoView(title: "Main Text Field - Icon with Action") {
        CKTextFieldMain(
          placeholder: "Last Name",
          text: $textMainVertical,
          focusOption: .mainAction,
          focusState: $focusState,
          trailingIcon: .delete,
          trailingIconAction: { textMainVertical = String() }
        )
      }
    }
  }

  // MARK: - Passcode Text Field
  var passcodeTextField: some View {
    HStack {
      Spacer(minLength: .zero)
      ElementInfoView(title: "Passcode Text Field") {
        CKTextFieldPasscode(
          text: $textPasscode,
          codeCompletion: { _ in }
        )
      }
      Spacer(minLength: .zero)
    }
  }

  // MARK: - Password Text Field
  var passwordTextField: some View {
    ElementInfoView(title: "Password Text Field") {
      CKTextFieldPassword(
        text: $textPassword,
        focusOption: .password,
        focusState: $focusState
      )
    }
  }

  // MARK: - Phone Text Field
  var phoneTextField: some View {
    ElementInfoView(title: "Phone Text Field") {
      CKTextFieldPhone(
        text: $textPhone,
        focusOption: .phone,
        focusState: $focusState
      )
    }
  }

  // MARK: - Plain Text Field
  var plainTextField: some View {
    ElementInfoView(title: "Plain Text Field") {
      CKTextFieldPlain(
        title: "Title",
        placeholder: "Placeholder",
        text: $textPlain,
        focusOption: .plain,
        focusState: $focusState
      )
    }
  }

  // MARK: - Username Text Field
  var usernameTextField: some View {
    ElementInfoView(title: "Username Text Field") {
      CKTextFieldUsername(
        text: $textUsername,
        focusOption: .username,
        focusState: $focusState
      )
    }
  }
}

#Preview {
  TextFieldsView()
}
