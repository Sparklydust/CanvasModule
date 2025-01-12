//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct Gradient_Tests {

  @Test func gradient_brown_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientBrownFirst, .gradientBrownSecond])

    let result = Gradient.brown

    #expect(result == expected, "Gradient `.brown` must be equal to `\(expected)`.")
  }

  @Test func gradient_red_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientRedFirst, .gradientRedSecond])

    let result = Gradient.red

    #expect(result == expected, "Gradient `.red` must be equal to `\(expected)`.")
  }

  @Test func gradient_yellow_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientYellowFirst, .gradientYellowSecond])

    let result = Gradient.yellow

    #expect(result == expected, "Gradient `.yellow` must be equal to `\(expected)`.")
  }

  @Test func gradient_orange_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientOrangeFirst, .gradientOrangeSecond])

    let result = Gradient.orange

    #expect(result == expected, "Gradient `.orange` must be equal to `\(expected)`.")
  }

  @Test func gradient_green_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientGreenFirst, .gradientGreenSecond])

    let result = Gradient.green

    #expect(result == expected, "Gradient `.green` must be equal to `\(expected)`.")
  }

  @Test func gradient_blue_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientBlueFirst, .gradientBlueSecond])

    let result = Gradient.blue

    #expect(result == expected, "Gradient `.blue` must be equal to `\(expected)`.")
  }

  @Test func gradient_purple_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientPurpleFirst, .gradientPurpleSecond])

    let result = Gradient.purple

    #expect(result == expected, "Gradient `.purple` must be equal to `\(expected)`.")
  }

  @Test func gradient_teal_returnsCorrectGradient() {
    let expected = Gradient(colors: [.gradientTealFirst, .gradientTealSecond])

    let result = Gradient.teal

    #expect(result == expected, "Gradient `.teal` must be equal to `\(expected)`.")
  }
}
