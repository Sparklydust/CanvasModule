//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

@MainActor final class CKButtonSocialLoginSnapshotsTests: XCTestCase {

  func testButton_socialLoginsIcons_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      HStack {
        Spacer()
        ElementInfoView(title: "Apple") {
          CKButtonSocialLogin(option: .apple, type: .icon, action: {})
        }

        Spacer()

        ElementInfoView(title: "Facebook") {
          CKButtonSocialLogin(option: .facebook, type: .icon, action: {})
        }

        Spacer()

        ElementInfoView(title: "Google") {
          CKButtonSocialLogin(option: .google, type: .icon, action: {})
        }
        Spacer()
      }
    }

    assertSnapshot(result)
  }

  func testButton_socialLoginsDefault_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Apple") {
          CKButtonSocialLogin(option: .apple, type: .default, action: {})
        }

        ElementInfoView(title: "Facebook") {
          CKButtonSocialLogin(option: .facebook, type: .default, action: {})
        }

        ElementInfoView(title: "Google") {
          CKButtonSocialLogin(option: .google, type: .default, action: {})
        }
      }
    }

    assertSnapshot(result)
  }
}
