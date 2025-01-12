//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest

public extension XCTestCase {

  /// Provides a utility method to assert snapshot tests for SwiftUI views, ensuring consistent visual output.
  /// This method integrates with the ``SnapshotTesting`` library.
  ///
  /// This method ensures snapshots are stored in different locations for CI and local testing environments.
  /// On failure, an ``XCTFail`` is triggered with a descriptive error message.
  /// - Parameters:
  ///   - view: The SwiftUI view to be snapshotted and tested.
  ///   - size: The frame size for the view. Defaults to iPhone 14 size (393x852).
  ///   - precision: The precision threshold for image comparison (default is 0.95).
  ///   - ciPath: The path for storing snapshots when running on a CI environment.
  ///   - record: A flag indicating whether to record a new reference snapshot (default is `false`).
  ///   - file: The source file where the assertion is called (default is the current file).
  ///   - testName: The name of the test method (default is the current function name).
  ///   - line: The line number where the assertion is called (default is the current line).
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

    let failureMessage = SnapshotTesting.verifySnapshot(
      of: view.frame(width: size.width, height: size.height),
      as: .image(precision: precision),
      record: record,
      file: ProcessInfo.processInfo.environment["CI"] == "TRUE" ? ciPath : file,
      testName: testName,
      line: line
    )

    if let failureMessage {
      XCTFail(failureMessage, file: file, line: line)
    }
  }
}
