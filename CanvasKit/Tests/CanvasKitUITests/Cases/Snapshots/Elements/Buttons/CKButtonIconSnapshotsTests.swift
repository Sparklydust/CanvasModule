//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

@MainActor final class CKButtonIconSnapshotsTests: XCTestCase {

  func testButton_icons_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      HStack {
        Spacer()
        ButtonsInfoView(title: "primary") {
          CKButtonIcon(.addUser, option: .primary, size: 40, action: {})
        }

        Spacer()

        ButtonsInfoView(title: "secondary") {
          CKButtonIcon(.addUser, option: .secondary, size: 40, action: {})
        }

        Spacer()

        ButtonsInfoView(title: "tertiary") {
          CKButtonIcon(.addUser, option: .tertiary, size: 40, action: {})
        }
        Spacer()
      }
    }

    assertSnapshot(result)
  }
}
