//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

// Centralized way to access all custom ``ShapeStyle`` colors in the design system.
public extension ShapeStyle where Self == Color {

  // MARK: - AlertAndStatus
  static var ckDisabled: SwiftUI.Color { .init(.ckDisabled) }
  static var ckDisabledButton: SwiftUI.Color { .init(.ckDisabledButton) }
  static var ckError: SwiftUI.Color { .init(.ckError) }
  static var ckInfo: SwiftUI.Color { .init(.ckInfo) }
  static var ckSuccess: SwiftUI.Color { .init(.ckSuccess) }
  static var ckWarning: SwiftUI.Color { .init(.ckWarning) }

  // MARK: - ckBackground
  static var ckBackgroundBlue: SwiftUI.Color { .init(.ckBackgroundBlue) }
  static var ckBackgroundBrown: SwiftUI.Color { .init(.ckBackgroundBrown) }
  static var ckBackgroundGreen: SwiftUI.Color { .init(.ckBackgroundGreen) }
  static var ckBackgroundOrange: SwiftUI.Color { .init(.ckBackgroundOrange) }
  static var ckBackgroundMain: SwiftUI.Color { .init(.ckBackgroundMain) }
  static var ckBackgroundPurple: SwiftUI.Color { .init(.ckBackgroundPurple) }
  static var ckBackgroundRed: SwiftUI.Color { .init(.ckBackgroundRed) }
  static var ckBackgroundTeal: SwiftUI.Color { .init(.ckBackgroundTeal) }
  static var ckBackgroundYellow: SwiftUI.Color { .init(.ckBackgroundYellow) }

  // MARK: - ckDark
  static var ckDark1: SwiftUI.Color { .init(.ckDark1) }
  static var ckDark2: SwiftUI.Color { .init(.ckDark2) }
  static var ckDark3: SwiftUI.Color { .init(.ckDark3) }
  static var ckDark4: SwiftUI.Color { .init(.ckDark4) }

  // MARK: - ckGradients
  static var ckGradientBlueFirst: SwiftUI.Color { .init(.ckGradientBlueFirst) }
  static var ckGradientBlueSecond: SwiftUI.Color { .init(.ckGradientBlueSecond) }
  static var ckGradientBrownFirst: SwiftUI.Color { .init(.ckGradientBrownFirst) }
  static var ckGradientBrownSecond: SwiftUI.Color { .init(.ckGradientBrownSecond) }
  static var ckGradientGreenFirst: SwiftUI.Color { .init(.ckGradientGreenFirst) }
  static var ckGradientGreenSecond: SwiftUI.Color { .init(.ckGradientGreenSecond) }
  static var ckGradientOrangeFirst: SwiftUI.Color { .init(.ckGradientOrangeFirst) }
  static var ckGradientOrangeSecond: SwiftUI.Color { .init(.ckGradientOrangeSecond) }
  static var ckGradientPurpleFirst: SwiftUI.Color { .init(.ckGradientPurpleFirst) }
  static var ckGradientPurpleSecond: SwiftUI.Color { .init(.ckGradientPurpleSecond) }
  static var ckGradientRedFirst: SwiftUI.Color { .init(.ckGradientRedFirst) }
  static var ckGradientRedSecond: SwiftUI.Color { .init(.ckGradientRedSecond) }
  static var ckGradientTealFirst: SwiftUI.Color { .init(.ckGradientTealFirst) }
  static var ckGradientTealSecond: SwiftUI.Color { .init(.ckGradientTealSecond) }
  static var ckGradientYellowFirst: SwiftUI.Color { .init(.ckGradientYellowFirst) }
  static var ckGradientYellowSecond: SwiftUI.Color { .init(.ckGradientYellowSecond) }

  // MARK: - ckGreyscale
  static var ckGreyscale50: SwiftUI.Color { .init(.ckGreyscale50) }
  static var ckGreyscale100: SwiftUI.Color { .init(.ckGreyscale100) }
  static var ckGreyscale200: SwiftUI.Color { .init(.ckGreyscale200) }
  static var ckGreyscale300: SwiftUI.Color { .init(.ckGreyscale300) }
  static var ckGreyscale400: SwiftUI.Color { .init(.ckGreyscale400) }
  static var ckGreyscale500: SwiftUI.Color { .init(.ckGreyscale500) }
  static var ckGreyscale600: SwiftUI.Color { .init(.ckGreyscale600) }
  static var ckGreyscale700: SwiftUI.Color { .init(.ckGreyscale700) }
  static var ckGreyscale800: SwiftUI.Color { .init(.ckGreyscale800) }
  static var ckGreyscale900: SwiftUI.Color { .init(.ckGreyscale900) }

  // MARK: - cks
  static var ckAmber: SwiftUI.Color { .init(.ckAmber) }
  static var ckBlack: SwiftUI.Color { .init(.ckBlack) }
  static var ckBlue: SwiftUI.Color { .init(.ckBlue) }
  static var ckBlueGrey: SwiftUI.Color { .init(.ckBlueGrey) }
  static var ckBrown: SwiftUI.Color { .init(.ckBrown) }
  static var ckCyan: SwiftUI.Color { .init(.ckCyan) }
  static var ckDeepOrange: SwiftUI.Color { .init(.ckDeepOrange) }
  static var ckDeepPurple: SwiftUI.Color { .init(.ckDeepPurple) }
  static var ckGreen: SwiftUI.Color { .init(.ckGreen) }
  static var ckIndigo: SwiftUI.Color { .init(.ckIndigo) }
  static var ckLightBlue: SwiftUI.Color { .init(.ckLightBlue) }
  static var ckLightGreen: SwiftUI.Color { .init(.ckLightGreen) }
  static var ckLime: SwiftUI.Color { .init(.ckLime) }
  static var ckOrange: SwiftUI.Color { .init(.ckOrange) }
  static var ckPink: SwiftUI.Color { .init(.ckPink) }
  static var ckPurple: SwiftUI.Color { .init(.ckPurple) }
  static var ckRed: SwiftUI.Color { .init(.ckRed) }
  static var ckTeal: SwiftUI.Color { .init(.ckTeal) }
  static var ckWhite: SwiftUI.Color { .init(.ckWhite) }
  static var ckYellow: SwiftUI.Color { .init(.ckYellow) }
  static var ckShadowCard: SwiftUI.Color { .init(.ckShadowCard) }

  // MARK: - ckPrimary
  static var ckPrimary50: SwiftUI.Color { .init(.ckPrimary50) }
  static var ckPrimary100: SwiftUI.Color { .init(.ckPrimary100) }
  static var ckPrimary200: SwiftUI.Color { .init(.ckPrimary200) }
  static var ckPrimary300: SwiftUI.Color { .init(.ckPrimary300) }
  static var ckPrimary400: SwiftUI.Color { .init(.ckPrimary400) }
  static var ckPrimary500: SwiftUI.Color { .init(.ckPrimary500) }
  static var ckPrimary600: SwiftUI.Color { .init(.ckPrimary600) }
  static var ckPrimary700: SwiftUI.Color { .init(.ckPrimary700) }
  static var ckPrimary800: SwiftUI.Color { .init(.ckPrimary800) }
  static var ckPrimary900: SwiftUI.Color { .init(.ckPrimary900) }

  // MARK: - ckSecondary
  static var ckSecondary50: SwiftUI.Color { .init(.ckSecondary50) }
  static var ckSecondary100: SwiftUI.Color { .init(.ckSecondary100) }
  static var ckSecondary200: SwiftUI.Color { .init(.ckSecondary200) }
  static var ckSecondary300: SwiftUI.Color { .init(.ckSecondary300) }
  static var ckSecondary400: SwiftUI.Color { .init(.ckSecondary400) }
  static var ckSecondary500: SwiftUI.Color { .init(.ckSecondary500) }
  static var ckSecondary600: SwiftUI.Color { .init(.ckSecondary600) }
  static var ckSecondary700: SwiftUI.Color { .init(.ckSecondary700) }
  static var ckSecondary800: SwiftUI.Color { .init(.ckSecondary800) }
  static var ckSecondary900: SwiftUI.Color { .init(.ckSecondary900) }

  // MARK: - ckTransparents
  static var ckTransparentBlue: SwiftUI.Color { .init(.ckTransparentBlue) }
  static var ckTransparentBrown: SwiftUI.Color { .init(.ckTransparentBrown) }
  static var ckTransparentGreen: SwiftUI.Color { .init(.ckTransparentGreen) }
  static var ckTransparentGrey: SwiftUI.Color { .init(.ckTransparentGrey) }
  static var ckTransparentOrange: SwiftUI.Color { .init(.ckTransparentOrange) }
  static var ckTransparentPurple: SwiftUI.Color { .init(.ckTransparentPurple) }
  static var ckTransparentRed: SwiftUI.Color { .init(.ckTransparentRed) }
  static var ckTransparentTeal: SwiftUI.Color { .init(.ckTransparentTeal) }
  static var ckTransparentYellow: SwiftUI.Color { .init(.ckTransparentYellow) }
}
