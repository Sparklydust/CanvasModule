//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

// Centralized way to access all custom ``ShapeStyle`` colors in the design system.
public extension ShapeStyle where Self == Color {

  // MARK: - AlertAndStatus
  static var disabled: SwiftUI.Color { .init(.disabled) }
  static var disabledButton: SwiftUI.Color { .init(.disabledButton) }
  static var error: SwiftUI.Color { .init(.error) }
  static var info: SwiftUI.Color { .init(.info) }
  static var success: SwiftUI.Color { .init(.success) }
  static var warning: SwiftUI.Color { .init(.warning) }

  // MARK: - Background
  static var backgroundBlue: SwiftUI.Color { .init(.backgroundBlue) }
  static var backgroundBrown: SwiftUI.Color { .init(.backgroundBrown) }
  static var backgroundGreen: SwiftUI.Color { .init(.backgroundGreen) }
  static var backgroundOrange: SwiftUI.Color { .init(.backgroundOrange) }
  static var backgroundPurple: SwiftUI.Color { .init(.backgroundPurple) }
  static var backgroundRed: SwiftUI.Color { .init(.backgroundRed) }
  static var backgroundTeal: SwiftUI.Color { .init(.backgroundTeal) }
  static var backgroundYellow: SwiftUI.Color { .init(.backgroundYellow) }

  // MARK: - Dark
  static var dark1: SwiftUI.Color { .init(.dark1) }
  static var dark2: SwiftUI.Color { .init(.dark2) }
  static var dark3: SwiftUI.Color { .init(.dark3) }
  static var dark4: SwiftUI.Color { .init(.dark4) }

  // MARK: - Gradients
  static var gradientBlueFirst: SwiftUI.Color { .init(.gradientBlueFirst) }
  static var gradientBlueSecond: SwiftUI.Color { .init(.gradientBlueSecond) }
  static var gradientBrownFirst: SwiftUI.Color { .init(.gradientBrownFirst) }
  static var gradientBrownSecond: SwiftUI.Color { .init(.gradientBrownSecond) }
  static var gradientGreenFirst: SwiftUI.Color { .init(.gradientGreenFirst) }
  static var gradientGreenSecond: SwiftUI.Color { .init(.gradientGreenSecond) }
  static var gradientOrangeFirst: SwiftUI.Color { .init(.gradientOrangeFirst) }
  static var gradientOrangeSecond: SwiftUI.Color { .init(.gradientOrangeSecond) }
  static var gradientPurpleFirst: SwiftUI.Color { .init(.gradientPurpleFirst) }
  static var gradientPurpleSecond: SwiftUI.Color { .init(.gradientPurpleSecond) }
  static var gradientRedFirst: SwiftUI.Color { .init(.gradientRedFirst) }
  static var gradientRedSecond: SwiftUI.Color { .init(.gradientRedSecond) }
  static var gradientTealFirst: SwiftUI.Color { .init(.gradientTealFirst) }
  static var gradientTealSecond: SwiftUI.Color { .init(.gradientTealSecond) }
  static var gradientYellowFirst: SwiftUI.Color { .init(.gradientYellowFirst) }
  static var gradientYellowSecond: SwiftUI.Color { .init(.gradientYellowSecond) }

  // MARK: - Greyscale
  static var greyscale50: SwiftUI.Color { .init(.greyscale50) }
  static var greyscale100: SwiftUI.Color { .init(.greyscale100) }
  static var greyscale200: SwiftUI.Color { .init(.greyscale200) }
  static var greyscale300: SwiftUI.Color { .init(.greyscale300) }
  static var greyscale400: SwiftUI.Color { .init(.greyscale400) }
  static var greyscale500: SwiftUI.Color { .init(.greyscale500) }
  static var greyscale600: SwiftUI.Color { .init(.greyscale600) }
  static var greyscale700: SwiftUI.Color { .init(.greyscale700) }
  static var greyscale800: SwiftUI.Color { .init(.greyscale800) }
  static var greyscale900: SwiftUI.Color { .init(.greyscale900) }

  // MARK: - Others
  static var otherAmber: SwiftUI.Color { .init(.otherAmber) }
  static var otherBlack: SwiftUI.Color { .init(.otherBlack) }
  static var otherBlue: SwiftUI.Color { .init(.otherBlue) }
  static var otherBlueGrey: SwiftUI.Color { .init(.otherBlueGrey) }
  static var otherBrown: SwiftUI.Color { .init(.otherBrown) }
  static var otherCyan: SwiftUI.Color { .init(.otherCyan) }
  static var otherDeepOrange: SwiftUI.Color { .init(.otherDeepOrange) }
  static var otherDeepPurple: SwiftUI.Color { .init(.otherDeepPurple) }
  static var otherGreen: SwiftUI.Color { .init(.otherGreen) }
  static var otherIndigo: SwiftUI.Color { .init(.otherIndigo) }
  static var otherLightBlue: SwiftUI.Color { .init(.otherLightBlue) }
  static var otherLightGreen: SwiftUI.Color { .init(.otherLightGreen) }
  static var otherLime: SwiftUI.Color { .init(.otherLime) }
  static var otherOrange: SwiftUI.Color { .init(.otherOrange) }
  static var otherPink: SwiftUI.Color { .init(.otherPink) }
  static var otherPurple: SwiftUI.Color { .init(.otherPurple) }
  static var otherRed: SwiftUI.Color { .init(.otherRed) }
  static var otherTeal: SwiftUI.Color { .init(.otherTeal) }
  static var otherWhite: SwiftUI.Color { .init(.otherWhite) }
  static var otherYellow: SwiftUI.Color { .init(.otherYellow) }
  static var shadowCard: SwiftUI.Color { .init(.shadowCard) }

  // MARK: - Primary
  static var primary50: SwiftUI.Color { .init(.primary50) }
  static var primary100: SwiftUI.Color { .init(.primary100) }
  static var primary200: SwiftUI.Color { .init(.primary200) }
  static var primary300: SwiftUI.Color { .init(.primary300) }
  static var primary400: SwiftUI.Color { .init(.primary400) }
  static var primary500: SwiftUI.Color { .init(.primary500) }
  static var primary600: SwiftUI.Color { .init(.primary600) }
  static var primary700: SwiftUI.Color { .init(.primary700) }
  static var primary800: SwiftUI.Color { .init(.primary800) }
  static var primary900: SwiftUI.Color { .init(.primary900) }

  // MARK: - Secondary
  static var secondary50: SwiftUI.Color { .init(.secondary50) }
  static var secondary100: SwiftUI.Color { .init(.secondary100) }
  static var secondary200: SwiftUI.Color { .init(.secondary200) }
  static var secondary300: SwiftUI.Color { .init(.secondary300) }
  static var secondary400: SwiftUI.Color { .init(.secondary400) }
  static var secondary500: SwiftUI.Color { .init(.secondary500) }
  static var secondary600: SwiftUI.Color { .init(.secondary600) }
  static var secondary700: SwiftUI.Color { .init(.secondary700) }
  static var secondary800: SwiftUI.Color { .init(.secondary800) }
  static var secondary900: SwiftUI.Color { .init(.secondary900) }

  // MARK: - Transparents
  static var transparentBlue: SwiftUI.Color { .init(.transparentBlue) }
  static var transparentBrown: SwiftUI.Color { .init(.transparentBrown) }
  static var transparentGreen: SwiftUI.Color { .init(.transparentGreen) }
  static var transparentGrey: SwiftUI.Color { .init(.transparentGrey) }
  static var transparentOrange: SwiftUI.Color { .init(.transparentOrange) }
  static var transparentPurple: SwiftUI.Color { .init(.transparentPurple) }
  static var transparentRed: SwiftUI.Color { .init(.transparentRed) }
  static var transparentTeal: SwiftUI.Color { .init(.transparentTeal) }
  static var transparentYellow: SwiftUI.Color { .init(.transparentYellow) }
}
