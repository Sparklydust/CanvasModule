//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

@MainActor final class CKTextFieldsDefaultSnapshotsTests: XCTestCase {

  func testTextFields_email_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Email Text Field - Unfocused - No Text") {
          CKTextFieldEmail(
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Email Text Field - Focused - Text") {
          CKTextFieldEmail(
            text: .constant("roland.lariotte@gmail.com"),
            focusOption: 1,
            focusState: .constant(1)
          )
        }

        ElementInfoView(title: "Email Text Field - Unfocused - Text") {
          CKTextFieldEmail(
            text: .constant("roland.lariotte@gmail.com"),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }
      }
    }

    assertSnapshot(result)
  }

  func testTextFields_main_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Main Text Field - Unfocused - No Text - No Icon") {
          CKTextFieldMain(
            placeholder: "First Name",
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Main Text Field - Focused - Text - No Icon") {
          CKTextFieldMain(
            placeholder: String(),
            text: .constant("Roland"),
            focusOption: 1,
            focusState: .constant(1)
          )
        }

        ElementInfoView(title: "Main Text Field - Unfocused - Text - No Icon") {
          CKTextFieldMain(
            placeholder: String(),
            text: .constant("Roland"),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Main Text Field - Unfocused - No Text - Icon") {
          CKTextFieldMain(
            placeholder: "Last Name",
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none),
            trailingIcon: .profile
          )
        }

        ElementInfoView(title: "Main Text Field - Focused - Text - Icon") {
          CKTextFieldMain(
            placeholder: String(),
            text: .constant("Lariotte"),
            focusOption: 1,
            focusState: .constant(1),
            trailingIcon: .profile
          )
        }

        ElementInfoView(title: "Main Text Field - Unfocused - Text - Icon") {
          CKTextFieldMain(
            placeholder: String(),
            text: .constant("Lariotte"),
            focusOption: 1,
            focusState: .constant(.none),
            trailingIcon: .profile
          )
        }
      }
    }

    assertSnapshot(result)
  }

  func testTextFields_passcode_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        HStack {
          Spacer(minLength: .zero)
          ElementInfoView(title: "Passcode Text Field - No Text") {
            CKTextFieldPasscode(
              text: .constant(String()),
              codeCompletion: { _ in }
            )
          }
          Spacer(minLength: .zero)
        }

        HStack {
          Spacer(minLength: .zero)
          ElementInfoView(title: "Passcode Text Field - Fully Filled") {
            CKTextFieldPasscode(
              text: .constant("1984"),
              codeCompletion: { _ in }
            )
          }
          Spacer(minLength: .zero)
        }
      }
    }

    assertSnapshot(result)
  }

  func testTextFields_password_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Password Text Field- Unfocused - No Text") {
          CKTextFieldPassword(
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Password Text Field - Focused - Text") {
          CKTextFieldPassword(
            text: .constant("String()"),
            focusOption: 1,
            focusState: .constant(1)
          )
        }

        ElementInfoView(title: "Password Text Field - Unfocused - Text") {
          CKTextFieldPassword(
            text: .constant("String()"),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }
      }
    }

    assertSnapshot(result)
  }

  func testTextFields_phone_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Phone Text Field- Unfocused - No Text") {
          CKTextFieldPhone(
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Phone Text Field - Focused - Text") {
          CKTextFieldPhone(
            text: .constant("+33658101499"),
            focusOption: 1,
            focusState: .constant(1)
          )
        }

        ElementInfoView(title: "Phone Text Field - Unfocused - Text") {
          CKTextFieldPhone(
            text: .constant("+33658101499"),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }
      }
    }

    assertSnapshot(result)
  }

  func testTextFields_plain_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Plain Text Field - Unfocused - No Text") {
          CKTextFieldPlain(
            title: "Enter a price",
            placeholder: "Price...",
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Plain Text Field - Focused - Text") {
          CKTextFieldPlain(
            title: "Enter a price",
            placeholder: "1234€",
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(1)
          )
        }

        ElementInfoView(title: "Plain Text Field - Unfocused - Text") {
          CKTextFieldPlain(
            title: "Enter a price",
            placeholder: "1234€",
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }
      }
    }

    assertSnapshot(result)
  }

  func testTextFields_username_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Username Text Field - Unfocused - No Text") {
          CKTextFieldUsername(
            text: .constant(String()),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }

        ElementInfoView(title: "Username Text Field - Focused - Text") {
          CKTextFieldUsername(
            text: .constant("Sparklydust"),
            focusOption: 1,
            focusState: .constant(1)
          )
        }

        ElementInfoView(title: "Username Text Field - Unfocused - Text") {
          CKTextFieldUsername(
            text: .constant("Sparklydust"),
            focusOption: 1,
            focusState: .constant(.none)
          )
        }
      }
    }

    assertSnapshot(result)
  }
}
