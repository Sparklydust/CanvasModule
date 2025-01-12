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
        Color(.ckPrimary900)
          .colorCard(label: "900")

        Color(.ckPrimary800)
          .colorCard(label: "800")

        Color(.ckPrimary700)
          .colorCard(label: "700")

        Color(.ckPrimary600)
          .colorCard(label: "600")

        Color(.ckPrimary500)
          .colorCard(label: "500")

        Color(.ckPrimary400)
          .colorCard(label: "400")

        Color(.ckPrimary300)
          .colorCard(label: "300")

        Color(.ckPrimary200)
          .colorCard(label: "200")

        Color(.ckPrimary100)
          .colorCard(label: "100")

        Color(.ckPrimary50)
          .colorCard(label: "50")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_secondary_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckSecondary900)
          .colorCard(label: "900")

        Color(.ckSecondary800)
          .colorCard(label: "800")

        Color(.ckSecondary700)
          .colorCard(label: "700")

        Color(.ckSecondary600)
          .colorCard(label: "600")

        Color(.ckSecondary500)
          .colorCard(label: "500")

        Color(.ckSecondary400)
          .colorCard(label: "400")

        Color(.ckSecondary300)
          .colorCard(label: "300")

        Color(.ckSecondary200)
          .colorCard(label: "200")

        Color(.ckSecondary100)
          .colorCard(label: "100")

        Color(.ckSecondary50)
          .colorCard(label: "50")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_alertAndStatus_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckSuccess)
          .colorCard(label: "Success")

        Color(.ckInfo)
          .colorCard(label: "Info")

        Color(.ckWarning)
          .colorCard(label: "Warning")

        Color(.ckError)
          .colorCard(label: "Error")

        Color(.ckDisabled)
          .colorCard(label: "Disabled")

        Color(.ckDisabledButton)
          .colorCard(label: "Disabled Button")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_greyscale_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckGreyscale900)
          .colorCard(label: "900")

        Color(.ckGreyscale800)
          .colorCard(label: "800")

        Color(.ckGreyscale700)
          .colorCard(label: "700")

        Color(.ckGreyscale600)
          .colorCard(label: "600")

        Color(.ckGreyscale500)
          .colorCard(label: "500")

        Color(.ckGreyscale400)
          .colorCard(label: "400")

        Color(.ckGreyscale300)
          .colorCard(label: "300")

        Color(.ckGreyscale200)
          .colorCard(label: "200")

        Color(.ckGreyscale100)
          .colorCard(label: "100")

        Color(.ckGreyscale50)
          .colorCard(label: "50")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_gradients_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        LinearGradient(gradient: .ckBrown)
          .colorCard(label: "Brown")

        LinearGradient(gradient: .ckRed)
          .colorCard(label: "Red")

        LinearGradient(gradient: .ckYellow)
          .colorCard(label: "Yellow")

        LinearGradient(gradient: .ckOrange)
          .colorCard(label: "Orange")

        LinearGradient(gradient: .ckGreen)
          .colorCard(label: "Green")

        LinearGradient(gradient: .ckBlue)
          .colorCard(label: "Blue")

        LinearGradient(gradient: .ckPurple)
          .colorCard(label: "Purple")

        LinearGradient(gradient: .ckTeal)
          .colorCard(label: "Teal")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_dark_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckDark1)
          .colorCard(label: "Dark 1")

        Color(.ckDark2)
          .colorCard(label: "Dark 2")

        Color(.ckDark3)
          .colorCard(label: "Dark 3")

        Color(.ckDark4)
          .colorCard(label: "Dark 4")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_others_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckAmber)
          .colorCard(label: "Amber")

        Color(.ckBlack)
          .colorCard(label: "Black")

        Color(.ckBlue)
          .colorCard(label: "Blue")

        Color(.ckBlueGrey)
          .colorCard(label: "Blue Grey")

        Color(.ckBrown)
          .colorCard(label: "Brown")

        Color(.ckCyan)
          .colorCard(label: "Cyan")

        Color(.ckDeepOrange)
          .colorCard(label: "Deep Orange")

        Color(.ckDeepPurple)
          .colorCard(label: "Deep Purple")

        Color(.ckGreen)
          .colorCard(label: "Green")

        Color(.ckIndigo)
          .colorCard(label: "Indigo")

        Color(.ckLightBlue)
          .colorCard(label: "Light Blue")

        Color(.ckLightGreen)
          .colorCard(label: "Light Green")

        Color(.ckLime)
          .colorCard(label: "Lime")

        Color(.ckOrange)
          .colorCard(label: "Orange")

        Color(.ckPink)
          .colorCard(label: "Pink")

        Color(.ckPurple)
          .colorCard(label: "Purple")

        Color(.ckRed)
          .colorCard(label: "Red")

        Color(.ckTeal)
          .colorCard(label: "Teal")

        Color(.ckWhite)
          .colorCard(label: "White")

        Color(.ckYellow)
          .colorCard(label: "Yellow")
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_background_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckBackgroundBlue)
          .colorCard(label: "Blue", labelColor: .gray)

        Color(.ckBackgroundBrown)
          .colorCard(label: "Brown", labelColor: .gray)

        Color(.ckBackgroundGreen)
          .colorCard(label: "Green", labelColor: .gray)

        Color(.ckBackgroundOrange)
          .colorCard(label: "Orange", labelColor: .gray)

        Color(.ckBackgroundPurple)
          .colorCard(label: "Purple", labelColor: .gray)

        Color(.ckBackgroundRed)
          .colorCard(label: "Red", labelColor: .gray)

        Color(.ckBackgroundTeal)
          .colorCard(label: "Teal", labelColor: .gray)

        Color(.ckBackgroundYellow)
          .colorCard(label: "Yellow", labelColor: .gray)
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }

  func testColors_transparent_snapshotIsEqualToExpected() {
    var result: some View {
      VStack {
        Color(.ckTransparentBlue)
          .colorCard(label: "Blue", labelColor: .gray)

        Color(.ckTransparentBrown)
          .colorCard(label: "Brown", labelColor: .gray)

        Color(.ckTransparentGreen)
          .colorCard(label: "Green", labelColor: .gray)

        Color(.ckTransparentGrey)
          .colorCard(label: "Grey", labelColor: .gray)

        Color(.ckTransparentOrange)
          .colorCard(label: "Orange", labelColor: .gray)

        Color(.ckTransparentPurple)
          .colorCard(label: "Purple", labelColor: .gray)

        Color(.ckTransparentRed)
          .colorCard(label: "Red", labelColor: .gray)

        Color(.ckTransparentTeal)
          .colorCard(label: "Teal", labelColor: .gray)

        Color(.ckTransparentYellow)
          .colorCard(label: "Yellow", labelColor: .gray)
      }
      .padding(.horizontal)
    }

    assertSnapshot(view: result, ciPath: ci_path)
  }
}
