//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct shapeStyle_ColorTests {

  @Test func shapeStyle_disabled_returnsCorrectColor() {
    let expected = Color(.disabled)

    let result = Color.disabled

    #expect(result == expected, "ShapeStyle `.disabled` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_disabledButton_returnsCorrectColor() {
    let expected = Color(.disabledButton)

    let result = Color.disabledButton

    #expect(result == expected, "ShapeStyle `.disabledButton` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_error_returnsCorrectColor() {
    let expected = Color(.error)

    let result = Color.error

    #expect(result == expected, "ShapeStyle `.error` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_info_returnsCorrectColor() {
    let expected = Color(.info)

    let result = Color.info

    #expect(result == expected, "ShapeStyle `.info` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_success_returnsCorrectColor() {
    let expected = Color(.success)

    let result = Color.success

    #expect(result == expected, "ShapeStyle `.success` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_warning_returnsCorrectColor() {
    let expected = Color(.warning)

    let result = Color.warning

    #expect(result == expected, "ShapeStyle `.warning` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundBlue_returnsCorrectColor() {
    let expected = Color(.backgroundBlue)

    let result = Color.backgroundBlue

    #expect(result == expected, "ShapeStyle `.backgroundBlue` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundBrown_returnsCorrectColor() {
    let expected = Color(.backgroundBrown)

    let result = Color.backgroundBrown

    #expect(result == expected, "ShapeStyle `.backgroundBrown` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundGreen_returnsCorrectColor() {
    let expected = Color(.backgroundGreen)

    let result = Color.backgroundGreen

    #expect(result == expected, "ShapeStyle `.backgroundGreen` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundOrange_returnsCorrectColor() {
    let expected = Color(.backgroundOrange)

    let result = Color.backgroundOrange

    #expect(result == expected, "ShapeStyle `.backgroundOrange` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundPurple_returnsCorrectColor() {
    let expected = Color(.backgroundPurple)

    let result = Color.backgroundPurple

    #expect(result == expected, "ShapeStyle `.backgroundPurple` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundRed_returnsCorrectColor() {
    let expected = Color(.backgroundRed)

    let result = Color.backgroundRed

    #expect(result == expected, "ShapeStyle `.backgroundRed` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundTeal_returnsCorrectColor() {
    let expected = Color(.backgroundTeal)

    let result = Color.backgroundTeal

    #expect(result == expected, "ShapeStyle `.backgroundTeal` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_backgroundYellow_returnsCorrectColor() {
    let expected = Color(.backgroundYellow)

    let result = Color.backgroundYellow

    #expect(result == expected, "ShapeStyle `.backgroundYellow` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_dark1_returnsCorrectColor() {
    let expected = Color(.dark1)

    let result = Color.dark1

    #expect(result == expected, "ShapeStyle `.dark1` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_dark2_returnsCorrectColor() {
    let expected = Color(.dark2)

    let result = Color.dark2

    #expect(result == expected, "ShapeStyle `.dark2` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_dark3_returnsCorrectColor() {
    let expected = Color(.dark3)

    let result = Color.dark3

    #expect(result == expected, "ShapeStyle `.dark3` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_dark4_returnsCorrectColor() {
    let expected = Color(.dark4)

    let result = Color.dark4

    #expect(result == expected, "ShapeStyle `.dark4` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientBlueFirst_returnsCorrectColor() {
    let expected = Color(.gradientBlueFirst)

    let result = Color.gradientBlueFirst

    #expect(result == expected, "ShapeStyle `.gradientBlueFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientBlueSecond_returnsCorrectColor() {
    let expected = Color(.gradientBlueSecond)

    let result = Color.gradientBlueSecond

    #expect(result == expected, "ShapeStyle `.gradientBlueSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientBrownFirst_returnsCorrectColor() {
    let expected = Color(.gradientBrownFirst)

    let result = Color.gradientBrownFirst

    #expect(result == expected, "ShapeStyle `.gradientBrownFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientBrownSecond_returnsCorrectColor() {
    let expected = Color(.gradientBrownSecond)

    let result = Color.gradientBrownSecond

    #expect(result == expected, "ShapeStyle `.gradientBrownSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientGreenFirst_returnsCorrectColor() {
    let expected = Color(.gradientGreenFirst)

    let result = Color.gradientGreenFirst

    #expect(result == expected, "ShapeStyle `.gradientGreenFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientGreenSecond_returnsCorrectColor() {
    let expected = Color(.gradientGreenSecond)

    let result = Color.gradientGreenSecond

    #expect(result == expected, "ShapeStyle `.gradientGreenSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientOrangeFirst_returnsCorrectColor() {
    let expected = Color(.gradientOrangeFirst)

    let result = Color.gradientOrangeFirst

    #expect(result == expected, "ShapeStyle `.gradientOrangeFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientOrangeSecond_returnsCorrectColor() {
    let expected = Color(.gradientOrangeSecond)

    let result = Color.gradientOrangeSecond

    #expect(result == expected, "ShapeStyle `.gradientOrangeSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientPurpleFirst_returnsCorrectColor() {
    let expected = Color(.gradientPurpleFirst)

    let result = Color.gradientPurpleFirst

    #expect(result == expected, "ShapeStyle `.gradientPurpleFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientPurpleSecond_returnsCorrectColor() {
    let expected = Color(.gradientPurpleSecond)

    let result = Color.gradientPurpleSecond

    #expect(result == expected, "ShapeStyle `.gradientPurpleSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientRedFirst_returnsCorrectColor() {
    let expected = Color(.gradientRedFirst)

    let result = Color.gradientRedFirst

    #expect(result == expected, "ShapeStyle `.gradientRedFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientRedSecond_returnsCorrectColor() {
    let expected = Color(.gradientRedSecond)

    let result = Color.gradientRedSecond

    #expect(result == expected, "ShapeStyle `.gradientRedSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientTealFirst_returnsCorrectColor() {
    let expected = Color(.gradientTealFirst)

    let result = Color.gradientTealFirst

    #expect(result == expected, "ShapeStyle `.gradientTealFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientTealSecond_returnsCorrectColor() {
    let expected = Color(.gradientTealSecond)

    let result = Color.gradientTealSecond

    #expect(result == expected, "ShapeStyle `.gradientTealSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientYellowFirst_returnsCorrectColor() {
    let expected = Color(.gradientYellowFirst)

    let result = Color.gradientYellowFirst

    #expect(result == expected, "ShapeStyle `.gradientYellowFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_gradientYellowSecond_returnsCorrectColor() {
    let expected = Color(.gradientYellowSecond)

    let result = Color.gradientYellowSecond

    #expect(result == expected, "ShapeStyle `.gradientYellowSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentBlue_returnsCorrectColor() {
    let expected = Color(.transparentBlue)

    let result = Color.transparentBlue

    #expect(result == expected, "ShapeStyle `.transparentBlue` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentBrown_returnsCorrectColor() {
    let expected = Color(.transparentBrown)

    let result = Color.transparentBrown

    #expect(result == expected, "ShapeStyle `.transparentBrown` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentGreen_returnsCorrectColor() {
    let expected = Color(.transparentGreen)

    let result = Color.transparentGreen

    #expect(result == expected, "ShapeStyle `.transparentGreen` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentGrey_returnsCorrectColor() {
    let expected = Color(.transparentGrey)

    let result = Color.transparentGrey

    #expect(result == expected, "ShapeStyle `.transparentGrey` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentOrange_returnsCorrectColor() {
    let expected = Color(.transparentOrange)

    let result = Color.transparentOrange

    #expect(result == expected, "ShapeStyle `.transparentOrange` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentPurple_returnsCorrectColor() {
    let expected = Color(.transparentPurple)

    let result = Color.transparentPurple

    #expect(result == expected, "ShapeStyle `.transparentPurple` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentRed_returnsCorrectColor() {
    let expected = Color(.transparentRed)

    let result = Color.transparentRed

    #expect(result == expected, "ShapeStyle `.transparentRed` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentTeal_returnsCorrectColor() {
    let expected = Color(.transparentTeal)

    let result = Color.transparentTeal

    #expect(result == expected, "ShapeStyle `.transparentTeal` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_transparentYellow_returnsCorrectColor() {
    let expected = Color(.transparentYellow)

    let result = Color.transparentYellow

    #expect(result == expected, "ShapeStyle `.transparentYellow` must be equal to `\(expected)`.")
  }
}
