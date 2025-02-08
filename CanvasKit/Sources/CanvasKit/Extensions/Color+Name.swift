//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

// Centralized way to access all custom colors in the design system.
public extension Color {

  // MARK: - AlertAndStatus
  static let ckDisabled = Color(.ckDisabled)
  static let ckDisabledButton = Color(.ckDisabledButton)
  static let ckError = Color(.ckError)
  static let ckInfo = Color(.ckInfo)
  static let ckSuccess = Color(.ckSuccess)
  static let ckWarning = Color(.ckWarning)

  // MARK: - Background
  static let ckBackgroundBlue = Color(.ckBackgroundBlue)
  static let ckBackgroundBrown = Color(.ckBackgroundBrown)
  static let ckBackgroundGreen = Color(.ckBackgroundGreen)
  static let ckBackgroundOrange = Color(.ckBackgroundOrange)
  static let ckBackgroundMain = Color(.ckBackgroundMain)
  static let ckBackgroundPurple = Color(.ckBackgroundPurple)
  static let ckBackgroundRed = Color(.ckBackgroundRed)
  static let ckBackgroundTeal = Color(.ckBackgroundTeal)
  static let ckBackgroundYellow = Color(.ckBackgroundYellow)

  // MARK: - Dark
  static let ckDark1 = Color(.ckDark1)
  static let ckDark2 = Color(.ckDark2)
  static let ckDark3 = Color(.ckDark3)
  static let ckDark4 = Color(.ckDark4)

  // MARK: - Gradients
  static let ckGradientBlueFirst = Color(.ckGradientBlueFirst)
  static let ckGradientBlueSecond = Color(.ckGradientBlueSecond)
  static let ckGradientBrownFirst = Color(.ckGradientBrownFirst)
  static let ckGradientBrownSecond = Color(.ckGradientBrownSecond)
  static let ckGradientGreenFirst = Color(.ckGradientGreenFirst)
  static let ckGradientGreenSecond = Color(.ckGradientGreenSecond)
  static let ckGradientOrangeFirst = Color(.ckGradientOrangeFirst)
  static let ckGradientOrangeSecond = Color(.ckGradientOrangeSecond)
  static let ckGradientPurpleFirst = Color(.ckGradientPurpleFirst)
  static let ckGradientPurpleSecond = Color(.ckGradientPurpleSecond)
  static let ckGradientRedFirst = Color(.ckGradientRedFirst)
  static let ckGradientRedSecond = Color(.ckGradientRedSecond)
  static let ckGradientTealFirst = Color(.ckGradientTealFirst)
  static let ckGradientTealSecond = Color(.ckGradientTealSecond)
  static let ckGradientYellowFirst = Color(.ckGradientYellowFirst)
  static let ckGradientYellowSecond = Color(.ckGradientYellowSecond)

  // MARK: - Greyscale
  static let ckGreyscale50 = Color(.ckGreyscale50)
  static let ckGreyscale100 = Color(.ckGreyscale100)
  static let ckGreyscale200 = Color(.ckGreyscale200)
  static let ckGreyscale300 = Color(.ckGreyscale300)
  static let ckGreyscale400 = Color(.ckGreyscale400)
  static let ckGreyscale500 = Color(.ckGreyscale500)
  static let ckGreyscale600 = Color(.ckGreyscale600)
  static let ckGreyscale700 = Color(.ckGreyscale700)
  static let ckGreyscale800 = Color(.ckGreyscale800)
  static let ckGreyscale900 = Color(.ckGreyscale900)

  // MARK: - Others
  static let ckAmber = Color(.ckAmber)
  static let ckBlack = Color(.ckBlack)
  static let ckBlue = Color(.ckBlue)
  static let ckBlueGrey = Color(.ckBlueGrey)
  static let ckBrown = Color(.ckBrown)
  static let ckCyan = Color(.ckCyan)
  static let ckDeepOrange = Color(.ckDeepOrange)
  static let ckDeepPurple = Color(.ckDeepPurple)
  static let ckGreen = Color(.ckGreen)
  static let ckIndigo = Color(.ckIndigo)
  static let ckLightBlue = Color(.ckLightBlue)
  static let ckLightGreen = Color(.ckLightGreen)
  static let ckLime = Color(.ckLime)
  static let ckOrange = Color(.ckOrange)
  static let ckPink = Color(.ckPink)
  static let ckPurple = Color(.ckPurple)
  static let ckRed = Color(.ckRed)
  static let ckTeal = Color(.ckTeal)
  static let ckWhite = Color(.ckWhite)
  static let ckYellow = Color(.ckYellow)
  static let ckShadowCard = Color(.ckShadowCard)

  // MARK: - Primary
  static let ckPrimary50 = Color(.ckPrimary50)
  static let ckPrimary100 = Color(.ckPrimary100)
  static let ckPrimary200 = Color(.ckPrimary200)
  static let ckPrimary300 = Color(.ckPrimary300)
  static let ckPrimary400 = Color(.ckPrimary400)
  static let ckPrimary500 = Color(.ckPrimary500)
  static let ckPrimary600 = Color(.ckPrimary600)
  static let ckPrimary700 = Color(.ckPrimary700)
  static let ckPrimary800 = Color(.ckPrimary800)
  static let ckPrimary900 = Color(.ckPrimary900)

  // MARK: - Secondary
  static let ckSecondary50 = Color(.ckSecondary50)
  static let ckSecondary100 = Color(.ckSecondary100)
  static let ckSecondary200 = Color(.ckSecondary200)
  static let ckSecondary300 = Color(.ckSecondary300)
  static let ckSecondary400 = Color(.ckSecondary400)
  static let ckSecondary500 = Color(.ckSecondary500)
  static let ckSecondary600 = Color(.ckSecondary600)
  static let ckSecondary700 = Color(.ckSecondary700)
  static let ckSecondary800 = Color(.ckSecondary800)
  static let ckSecondary900 = Color(.ckSecondary900)

  // MARK: - Transparents
  static let ckTransparentBlue = Color(.ckTransparentBlue)
  static let ckTransparentBrown = Color(.ckTransparentBrown)
  static let ckTransparentGreen = Color(.ckTransparentGreen)
  static let ckTransparentGrey = Color(.ckTransparentGrey)
  static let ckTransparentOrange = Color(.ckTransparentOrange)
  static let ckTransparentPurple = Color(.ckTransparentPurple)
  static let ckTransparentRed = Color(.ckTransparentRed)
  static let ckTransparentTeal = Color(.ckTransparentTeal)
  static let ckTransparentYellow = Color(.ckTransparentYellow)
}
