//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct Gradient_Tests {

  @Test func gradient_ckBrown_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientBrownFirst, .ckGradientBrownSecond])

    let result = Gradient.ckBrown

    #expect(result == expected, "Gradient `.ckBrown` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckRed_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientRedFirst, .ckGradientRedSecond])

    let result = Gradient.ckRed

    #expect(result == expected, "Gradient `.ckRed` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckYellow_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientYellowFirst, .ckGradientYellowSecond])

    let result = Gradient.ckYellow

    #expect(result == expected, "Gradient `.ckYellow` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckOrange_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientOrangeFirst, .ckGradientOrangeSecond])

    let result = Gradient.ckOrange

    #expect(result == expected, "Gradient `.ckOrange` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckGreen_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientGreenFirst, .ckGradientGreenSecond])

    let result = Gradient.ckGreen

    #expect(result == expected, "Gradient `.ckGreen` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckBlue_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientBlueFirst, .ckGradientBlueSecond])

    let result = Gradient.ckBlue

    #expect(result == expected, "Gradient `.ckBlue` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckPurple_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientPurpleFirst, .ckGradientPurpleSecond])

    let result = Gradient.ckPurple

    #expect(result == expected, "Gradient `.ckPurple` must be equal to `\(expected)`.")
  }

  @Test func gradient_ckTeal_returnsCorrectGradient() {
    let expected = Gradient(colors: [.ckGradientTealFirst, .ckGradientTealSecond])

    let result = Gradient.ckTeal

    #expect(result == expected, "Gradient `.ckTeal` must be equal to `\(expected)`.")
  }
}
