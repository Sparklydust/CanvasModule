//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import CanvasKit

final class ColorsSnapshotTests: XCTestCase {

  let ci_path: StaticString = "/Volumes/workspace/repository/ci_scripts/resources/CanvasKit/CanvasKitUITests/Snapshots/ColorsSnapshotTests.swift"

  func testColors_primary_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.primary900)
          .colorCard(label: "900")

        Color(.primary800)
          .colorCard(label: "800")

        Color(.primary700)
          .colorCard(label: "700")

        Color(.primary600)
          .colorCard(label: "600")

        Color(.primary500)
          .colorCard(label: "500")

        Color(.primary400)
          .colorCard(label: "400")

        Color(.primary300)
          .colorCard(label: "300")

        Color(.primary200)
          .colorCard(label: "200")

        Color(.primary100)
          .colorCard(label: "100")

        Color(.primary50)
          .colorCard(label: "50")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_secondary_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.secondary900)
          .colorCard(label: "900")

        Color(.secondary800)
          .colorCard(label: "800")

        Color(.secondary700)
          .colorCard(label: "700")

        Color(.secondary600)
          .colorCard(label: "600")

        Color(.secondary500)
          .colorCard(label: "500")

        Color(.secondary400)
          .colorCard(label: "400")

        Color(.secondary300)
          .colorCard(label: "300")

        Color(.secondary200)
          .colorCard(label: "200")

        Color(.secondary100)
          .colorCard(label: "100")

        Color(.secondary50)
          .colorCard(label: "50")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_alertAndStatus_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.success)
          .colorCard(label: "Success")

        Color(.info)
          .colorCard(label: "Info")

        Color(.warning)
          .colorCard(label: "Warning")

        Color(.error)
          .colorCard(label: "Error")

        Color(.disabled)
          .colorCard(label: "Disabled")

        Color(.disabledButton)
          .colorCard(label: "Disabled Button")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_greyscale_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.greyscale900)
          .colorCard(label: "900")

        Color(.greyscale800)
          .colorCard(label: "800")

        Color(.greyscale700)
          .colorCard(label: "700")

        Color(.greyscale600)
          .colorCard(label: "600")

        Color(.greyscale500)
          .colorCard(label: "500")

        Color(.greyscale400)
          .colorCard(label: "400")

        Color(.greyscale300)
          .colorCard(label: "300")

        Color(.greyscale200)
          .colorCard(label: "200")

        Color(.greyscale100)
          .colorCard(label: "100")

        Color(.greyscale50)
          .colorCard(label: "50")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_gradients_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        LinearGradient(gradient: .brown)
          .colorCard(label: "Brown")

        LinearGradient(gradient: .red)
          .colorCard(label: "Red")

        LinearGradient(gradient: .yellow)
          .colorCard(label: "Yellow")

        LinearGradient(gradient: .orange)
          .colorCard(label: "Orange")

        LinearGradient(gradient: .green)
          .colorCard(label: "Green")

        LinearGradient(gradient: .blue)
          .colorCard(label: "Blue")

        LinearGradient(gradient: .purple)
          .colorCard(label: "Purple")

        LinearGradient(gradient: .teal)
          .colorCard(label: "Teal")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_dark_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.dark1)
          .colorCard(label: "Dark 1")

        Color(.dark2)
          .colorCard(label: "Dark 2")

        Color(.dark3)
          .colorCard(label: "Dark 3")

        Color(.dark4)
          .colorCard(label: "Dark 4")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_others_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.otherAmber)
          .colorCard(label: "Amber")

        Color(.otherBlack)
          .colorCard(label: "Black")

        Color(.otherBlue)
          .colorCard(label: "Blue")

        Color(.otherBlueGrey)
          .colorCard(label: "Blue Grey")

        Color(.otherBrown)
          .colorCard(label: "Brown")

        Color(.otherCyan)
          .colorCard(label: "Cyan")

        Color(.otherDeepOrange)
          .colorCard(label: "Deep Orange")

        Color(.otherDeepPurple)
          .colorCard(label: "Deep Purple")

        Color(.otherGreen)
          .colorCard(label: "Green")

        Color(.otherIndigo)
          .colorCard(label: "Indigo")

        Color(.otherLightBlue)
          .colorCard(label: "Light Blue")

        Color(.otherLightGreen)
          .colorCard(label: "Light Green")

        Color(.otherLime)
          .colorCard(label: "Lime")

        Color(.otherOrange)
          .colorCard(label: "Orange")

        Color(.otherPink)
          .colorCard(label: "Pink")

        Color(.otherPurple)
          .colorCard(label: "Purple")

        Color(.otherRed)
          .colorCard(label: "Red")

        Color(.otherTeal)
          .colorCard(label: "Teal")

        Color(.otherWhite)
          .colorCard(label: "White")

        Color(.otherYellow)
          .colorCard(label: "Yellow")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_background_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.backgroundBlue)
          .colorCard(label: "Blue", labelColor: .gray)

        Color(.backgroundBrown)
          .colorCard(label: "Brown", labelColor: .gray)

        Color(.backgroundGreen)
          .colorCard(label: "Green", labelColor: .gray)

        Color(.backgroundOrange)
          .colorCard(label: "Orange", labelColor: .gray)

        Color(.backgroundPurple)
          .colorCard(label: "Purple", labelColor: .gray)

        Color(.backgroundRed)
          .colorCard(label: "Red", labelColor: .gray)

        Color(.backgroundTeal)
          .colorCard(label: "Teal", labelColor: .gray)

        Color(.backgroundYellow)
          .colorCard(label: "Yellow", labelColor: .gray)
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_transparent_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.transparentBlue)
          .colorCard(label: "Blue", labelColor: .gray)

        Color(.transparentBrown)
          .colorCard(label: "Brown", labelColor: .gray)

        Color(.transparentGreen)
          .colorCard(label: "Green", labelColor: .gray)

        Color(.transparentGrey)
          .colorCard(label: "Grey", labelColor: .gray)

        Color(.transparentOrange)
          .colorCard(label: "Orange", labelColor: .gray)

        Color(.transparentPurple)
          .colorCard(label: "Purple", labelColor: .gray)

        Color(.transparentRed)
          .colorCard(label: "Red", labelColor: .gray)

        Color(.transparentTeal)
          .colorCard(label: "Teal", labelColor: .gray)

        Color(.transparentYellow)
          .colorCard(label: "Yellow", labelColor: .gray)
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }
}
