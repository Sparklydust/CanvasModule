//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

@MainActor final class CKButtonMainSnapshotsTests: XCTestCase {

  func testButton_mains_snapshotIsEqualToExpected() {
    let result = ContainerTestView {
      VStack {
        ButtonsInfoView(title: "option primary - default variant") {
          CKButtonMain(title: "Continue", action: {})
        }

        ButtonsInfoView(title: "option primary - icons variant") {
          CKButtonMain(
            title: "Continue",
            variant: .icon(leading: .addUser, trailing: .arrowRight),
            action: {}
          )
        }

        ButtonsInfoView(title: "option primary - leading icon variant") {
          CKButtonMain(
            title: "Continue",
            variant: .icon(leading: .addUser),
            action: {}
          )
        }

        ButtonsInfoView(title: "option primary - trailing icon variant") {
          CKButtonMain(
            title: "Continue",
            variant: .icon(trailing: .arrowRight),
            action: {}
          )
        }

        ButtonsInfoView(title: "option primary - disabled") {
          CKButtonMain(title: "Continue", action: {})
            .disabled(true)
        }

        ButtonsInfoView(title: "option secondary - default variant") {
          CKButtonMain(
            title: "Cancel",
            option: .secondary,
            action: {}
          )
        }

        ButtonsInfoView(title: "option secondary - icons variant") {
          CKButtonMain(
            title: "Cancel",
            option: .secondary,
            variant: .icon(leading: .addUser, trailing: .arrowRight),
            action: {}
          )
        }

        ButtonsInfoView(title: "option secondary - leading icon variant") {
          CKButtonMain(
            title: "Cancel",
            option: .secondary,
            variant: .icon(leading: .addUser),
            action: {}
          )
        }

        ButtonsInfoView(title: "option secondary - trailing icon variant") {
          CKButtonMain(
            title: "Cancel",
            option: .secondary,
            variant: .icon(trailing: .arrowRight),
            action: {}
          )
        }

        ButtonsInfoView(title: "option secondary - disabled") {
          CKButtonMain(
            title: "Cancel",
            option: .secondary,
            action: {}
          )
          .disabled(true)
        }
      }
    }

    assertSnapshot(result, size: CGSize(width: 393, height: 1600))
  }
}
