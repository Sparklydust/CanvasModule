//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest

public extension XCTestCase {

  func assertSnapshot(
    view: some View,
    size: CGSize = CGSize(width: 393, height: 852),
    precision: Float = 0.95,
    ciPath: StaticString,
    record: Bool = false,
    file: StaticString = #filePath,
    testName: String = #function,
    line: UInt = #line
  ) {

    let isCI = ProcessInfo.processInfo.environment["CI"] == "TRUE"

    var filePath: StaticString
    if isCI {
      filePath = ciPath
    } else {
      filePath = file
    }

    let failure = SnapshotTesting.verifySnapshot(
      of: view.frame(width: size.width, height: size.height),
      as: .image(precision: precision),
      record: record,
      file: filePath,
      testName: testName,
      line: line
    )

    if let message = failure {
      XCTFail(message, file: file, line: line)
    }
  }
}
