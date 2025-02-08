//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

@MainActor final class CKDividerSnapshotsTests: XCTestCase {

  func testDivider_main_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ElementInfoView(title: "Divider - Default - Axis: Horizontal") {
          CKDivider()
        }

        ElementInfoView(title: "Divider - Default - Axis: Horizontal - Color: Red") {
          CKDivider(color: .ckRed)
        }

        ElementInfoView(title: "Divider - Default - Axis: Vertical") {
          CKDivider(axis: .vertical)
        }
      }
    }

    assertSnapshot(result, size: .init(width: 400, height: 500))
  }
}
