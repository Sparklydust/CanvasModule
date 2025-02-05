//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

@MainActor final class SpacingsSnapshotsTests: XCTestCase {

  func testSpacing_all_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack(alignment: .leading) {
        ForEach(CKSpacing.allCases, id: \.self) { space in
          SpacerInfoView(spacing: space)
        }
      }
      .padding()
    }

    assertSnapshot(result, size: CGSize(width: 393, height: 1600))
  }
}
