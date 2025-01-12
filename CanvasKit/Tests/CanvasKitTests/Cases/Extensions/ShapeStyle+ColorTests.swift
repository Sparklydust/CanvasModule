//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct shapeStyle_ColorTests {

  @Test func shapeStyle_ckDisabled_returnsCorrectColor() {
    let expected = Color(.ckDisabled)

    let result = Color.ckDisabled

    #expect(result == expected, "ShapeStyle `.ckDisabled` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDisabledButton_returnsCorrectColor() {
    let expected = Color(.ckDisabledButton)

    let result = Color.ckDisabledButton

    #expect(result == expected, "ShapeStyle `.ckDisabledButton` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckError_returnsCorrectColor() {
    let expected = Color(.ckError)

    let result = Color.ckError

    #expect(result == expected, "ShapeStyle `.ckError` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckInfo_returnsCorrectColor() {
    let expected = Color(.ckInfo)

    let result = Color.ckInfo

    #expect(result == expected, "ShapeStyle `.ckInfo` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSuccess_returnsCorrectColor() {
    let expected = Color(.ckSuccess)

    let result = Color.ckSuccess

    #expect(result == expected, "ShapeStyle `.ckSuccess` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckWarning_returnsCorrectColor() {
    let expected = Color(.ckWarning)

    let result = Color.ckWarning

    #expect(result == expected, "ShapeStyle `.ckWarning` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundBlue_returnsCorrectColor() {
    let expected = Color(.ckBackgroundBlue)

    let result = Color.ckBackgroundBlue

    #expect(result == expected, "ShapeStyle `.ckBackgroundBlue` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundBrown_returnsCorrectColor() {
    let expected = Color(.ckBackgroundBrown)

    let result = Color.ckBackgroundBrown

    #expect(result == expected, "ShapeStyle `.ckBackgroundBrown` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundGreen_returnsCorrectColor() {
    let expected = Color(.ckBackgroundGreen)

    let result = Color.ckBackgroundGreen

    #expect(result == expected, "ShapeStyle `.ckBackgroundGreen` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundOrange_returnsCorrectColor() {
    let expected = Color(.ckBackgroundOrange)

    let result = Color.ckBackgroundOrange

    #expect(result == expected, "ShapeStyle `.ckBackgroundOrange` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundPurple_returnsCorrectColor() {
    let expected = Color(.ckBackgroundPurple)

    let result = Color.ckBackgroundPurple

    #expect(result == expected, "ShapeStyle `.ckBackgroundPurple` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundRed_returnsCorrectColor() {
    let expected = Color(.ckBackgroundRed)

    let result = Color.ckBackgroundRed

    #expect(result == expected, "ShapeStyle `.ckBackgroundRed` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundTeal_returnsCorrectColor() {
    let expected = Color(.ckBackgroundTeal)

    let result = Color.ckBackgroundTeal

    #expect(result == expected, "ShapeStyle `.ckBackgroundTeal` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBackgroundYellowreturnsCorrectColor() {
    let expected = Color(.ckBackgroundYellow)

    let result = Color.ckBackgroundYellow

    #expect(result == expected, "ShapeStyle `.ckBackgroundYellow` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDark1_returnsCorrectColor() {
    let expected = Color(.ckDark1)

    let result = Color.ckDark1

    #expect(result == expected, "ShapeStyle `.ckDark1` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDark2_returnsCorrectColor() {
    let expected = Color(.ckDark2)

    let result = Color.ckDark2

    #expect(result == expected, "ShapeStyle `.ckDark2` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDark3_returnsCorrectColor() {
    let expected = Color(.ckDark3)

    let result = Color.ckDark3

    #expect(result == expected, "ShapeStyle `.ckDark3` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDark4_returnsCorrectColor() {
    let expected = Color(.ckDark4)

    let result = Color.ckDark4

    #expect(result == expected, "ShapeStyle `.ckDark4` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientBlueFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientBlueFirst)

    let result = Color.ckGradientBlueFirst

    #expect(result == expected, "ShapeStyle `.ckGradientBlueFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientBlueSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientBlueSecond)

    let result = Color.ckGradientBlueSecond

    #expect(result == expected, "ShapeStyle `.ckGradientBlueSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientBrownFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientBrownFirst)

    let result = Color.ckGradientBrownFirst

    #expect(result == expected, "ShapeStyle `.ckGradientBrownFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientBrownSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientBrownSecond)

    let result = Color.ckGradientBrownSecond

    #expect(result == expected, "ShapeStyle `.ckGradientBrownSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientGreenFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientGreenFirst)

    let result = Color.ckGradientGreenFirst

    #expect(result == expected, "ShapeStyle `.ckGradientGreenFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientGreenSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientGreenSecond)

    let result = Color.ckGradientGreenSecond

    #expect(result == expected, "ShapeStyle `.ckGradientGreenSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientOrangeFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientOrangeFirst)

    let result = Color.ckGradientOrangeFirst

    #expect(result == expected, "ShapeStyle `.ckGradientOrangeFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientOrangeSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientOrangeSecond)

    let result = Color.ckGradientOrangeSecond

    #expect(result == expected, "ShapeStyle `.ckGradientOrangeSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientPurpleFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientPurpleFirst)

    let result = Color.ckGradientPurpleFirst

    #expect(result == expected, "ShapeStyle `.ckGradientPurpleFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientPurpleSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientPurpleSecond)

    let result = Color.ckGradientPurpleSecond

    #expect(result == expected, "ShapeStyle `.ckGradientPurpleSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientRedFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientRedFirst)

    let result = Color.ckGradientRedFirst

    #expect(result == expected, "ShapeStyle `.ckGradientRedFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientRedSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientRedSecond)

    let result = Color.ckGradientRedSecond

    #expect(result == expected, "ShapeStyle `.ckGradientRedSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientTealFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientTealFirst)

    let result = Color.ckGradientTealFirst

    #expect(result == expected, "ShapeStyle `.ckGradientTealFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientTealSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientTealSecond)

    let result = Color.ckGradientTealSecond

    #expect(result == expected, "ShapeStyle `.ckGradientTealSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientYellowFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientYellowFirst)

    let result = Color.ckGradientYellowFirst

    #expect(result == expected, "ShapeStyle `.ckGradientYellowFirst` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGradientYellowSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientYellowSecond)

    let result = Color.ckGradientYellowSecond

    #expect(result == expected, "ShapeStyle `.ckGradientYellowSecond` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentBlue_returnsCorrectColor() {
    let expected = Color(.ckTransparentBlue)

    let result = Color.ckTransparentBlue

    #expect(result == expected, "ShapeStyle `.ckTransparentBlue` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentBrown_returnsCorrectColor() {
    let expected = Color(.ckTransparentBrown)

    let result = Color.ckTransparentBrown

    #expect(result == expected, "ShapeStyle `.ckTransparentBrown` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentGreen_returnsCorrectColor() {
    let expected = Color(.ckTransparentGreen)

    let result = Color.ckTransparentGreen

    #expect(result == expected, "ShapeStyle `.ckTransparentGreen` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentGrey_returnsCorrectColor() {
    let expected = Color(.ckTransparentGrey)

    let result = Color.ckTransparentGrey

    #expect(result == expected, "ShapeStyle `.ckTransparentGrey` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentOrange_returnsCorrectColor() {
    let expected = Color(.ckTransparentOrange)

    let result = Color.ckTransparentOrange

    #expect(result == expected, "ShapeStyle `.ckTransparentOrange` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentPurple_returnsCorrectColor() {
    let expected = Color(.ckTransparentPurple)

    let result = Color.ckTransparentPurple

    #expect(result == expected, "ShapeStyle `.ckTransparentPurple` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentRed_returnsCorrectColor() {
    let expected = Color(.ckTransparentRed)

    let result = Color.ckTransparentRed

    #expect(result == expected, "ShapeStyle `.ckTransparentRed` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentTeal_returnsCorrectColor() {
    let expected = Color(.ckTransparentTeal)

    let result = Color.ckTransparentTeal

    #expect(result == expected, "ShapeStyle `.ckTransparentTeal` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTransparentYellow_returnsCorrectColor() {
    let expected = Color(.ckTransparentYellow)

    let result = Color.ckTransparentYellow

    #expect(result == expected, "ShapeStyle `.ckTransparentYellow` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale50_returnsCorrectColor() {
    let expected = Color(.ckGreyscale50)

    let result = Color.ckGreyscale50

    #expect(result == expected, "ShapeStyle `.ckGreyscale50` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale100_returnsCorrectColor() {
    let expected = Color(.ckGreyscale100)

    let result = Color.ckGreyscale100

    #expect(result == expected, "ShapeStyle `.ckGreyscale100` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale200_returnsCorrectColor() {
    let expected = Color(.ckGreyscale200)

    let result = Color.ckGreyscale200

    #expect(result == expected, "ShapeStyle `.ckGreyscale200` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale300_returnsCorrectColor() {
    let expected = Color(.ckGreyscale300)

    let result = Color.ckGreyscale300

    #expect(result == expected, "ShapeStyle `.ckGreyscale300` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale400_returnsCorrectColor() {
    let expected = Color(.ckGreyscale400)

    let result = Color.ckGreyscale400

    #expect(result == expected, "ShapeStyle `.ckGreyscale400` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale500_returnsCorrectColor() {
    let expected = Color(.ckGreyscale500)

    let result = Color.ckGreyscale500

    #expect(result == expected, "ShapeStyle `.ckGreyscale500` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale600_returnsCorrectColor() {
    let expected = Color(.ckGreyscale600)

    let result = Color.ckGreyscale600

    #expect(result == expected, "ShapeStyle `.ckGreyscale600` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale700_returnsCorrectColor() {
    let expected = Color(.ckGreyscale700)

    let result = Color.ckGreyscale700

    #expect(result == expected, "ShapeStyle `.ckGreyscale700` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale800_returnsCorrectColor() {
    let expected = Color(.ckGreyscale800)

    let result = Color.ckGreyscale800

    #expect(result == expected, "ShapeStyle `.ckGreyscale800` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreyscale900_returnsCorrectColor() {
    let expected = Color(.ckGreyscale900)

    let result = Color.ckGreyscale900

    #expect(result == expected, "ShapeStyle `.ckGreyscale900` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckAmber_returnsCorrectColor() {
    let expected = Color(.ckAmber)

    let result = Color.ckAmber

    #expect(result == expected, "ShapeStyle `.ckAmber` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBlack_returnsCorrectColor() {
    let expected = Color(.ckBlack)

    let result = Color.ckBlack

    #expect(result == expected, "ShapeStyle `.ckBlack` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBlue_returnsCorrectColor() {
    let expected = Color(.ckBlue)

    let result = Color.ckBlue

    #expect(result == expected, "ShapeStyle `.ckBlue` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBlueGrey_returnsCorrectColor() {
    let expected = Color(.ckBlueGrey)

    let result = Color.ckBlueGrey

    #expect(result == expected, "ShapeStyle `.ckBlueGrey` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckBrown_returnsCorrectColor() {
    let expected = Color(.ckBrown)

    let result = Color.ckBrown

    #expect(result == expected, "ShapeStyle `.ckBrown` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckCyan_returnsCorrectColor() {
    let expected = Color(.ckCyan)

    let result = Color.ckCyan

    #expect(result == expected, "ShapeStyle `.ckCyan` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDeepOrange_returnsCorrectColor() {
    let expected = Color(.ckDeepOrange)

    let result = Color.ckDeepOrange

    #expect(result == expected, "ShapeStyle `.ckDeepOrange` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckDeepPurple_returnsCorrectColor() {
    let expected = Color(.ckDeepPurple)

    let result = Color.ckDeepPurple

    #expect(result == expected, "ShapeStyle `.ckDeepPurple` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckGreen_returnsCorrectColor() {
    let expected = Color(.ckGreen)

    let result = Color.ckGreen

    #expect(result == expected, "ShapeStyle `.ckGreen` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckIndigo_returnsCorrectColor() {
    let expected = Color(.ckIndigo)

    let result = Color.ckIndigo

    #expect(result == expected, "ShapeStyle `.ckIndigo` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckLightBlue_returnsCorrectColor() {
    let expected = Color(.ckLightBlue)

    let result = Color.ckLightBlue

    #expect(result == expected, "ShapeStyle `.ckLightBlue` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckLightGreen_returnsCorrectColor() {
    let expected = Color(.ckLightGreen)

    let result = Color.ckLightGreen

    #expect(result == expected, "ShapeStyle `.ckLightGreen` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckLime_returnsCorrectColor() {
    let expected = Color(.ckLime)

    let result = Color.ckLime

    #expect(result == expected, "ShapeStyle `.ckLime` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckOrange_returnsCorrectColor() {
    let expected = Color(.ckOrange)

    let result = Color.ckOrange

    #expect(result == expected, "ShapeStyle `.ckOrange` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPink_returnsCorrectColor() {
    let expected = Color(.ckPink)

    let result = Color.ckPink

    #expect(result == expected, "ShapeStyle `.ckPink` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPurple_returnsCorrectColor() {
    let expected = Color(.ckPurple)

    let result = Color.ckPurple

    #expect(result == expected, "ShapeStyle `.ckPurple` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckRed_returnsCorrectColor() {
    let expected = Color(.ckRed)

    let result = Color.ckRed

    #expect(result == expected, "ShapeStyle `.ckRed` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckTeal_returnsCorrectColor() {
    let expected = Color(.ckTeal)

    let result = Color.ckTeal

    #expect(result == expected, "ShapeStyle `.ckTeal` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckWhite_returnsCorrectColor() {
    let expected = Color(.ckWhite)

    let result = Color.ckWhite

    #expect(result == expected, "ShapeStyle `.ckWhite` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckYellow_returnsCorrectColor() {
    let expected = Color(.ckYellow)

    let result = Color.ckYellow

    #expect(result == expected, "ShapeStyle `.ckYellow` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckShadowCard_returnsCorrectColor() {
    let expected = Color(.ckShadowCard)

    let result = Color.ckShadowCard

    #expect(result == expected, "ShapeStyle `.ckShadowCard` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary50_returnsCorrectColor() {
    let expected = Color(.ckPrimary50)

    let result = Color.ckPrimary50

    #expect(result == expected, "ShapeStyle `.ckPrimary50` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary100_returnsCorrectColor() {
    let expected = Color(.ckPrimary100)

    let result = Color.ckPrimary100

    #expect(result == expected, "ShapeStyle `.ckPrimary100` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary200_returnsCorrectColor() {
    let expected = Color(.ckPrimary200)

    let result = Color.ckPrimary200

    #expect(result == expected, "ShapeStyle `.ckPrimary200` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary300_returnsCorrectColor() {
    let expected = Color(.ckPrimary300)

    let result = Color.ckPrimary300

    #expect(result == expected, "ShapeStyle `.ckPrimary300` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary400_returnsCorrectColor() {
    let expected = Color(.ckPrimary400)

    let result = Color.ckPrimary400

    #expect(result == expected, "ShapeStyle `.ckPrimary400` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary500_returnsCorrectColor() {
    let expected = Color(.ckPrimary500)

    let result = Color.ckPrimary500

    #expect(result == expected, "ShapeStyle `.ckPrimary500` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary600_returnsCorrectColor() {
    let expected = Color(.ckPrimary600)

    let result = Color.ckPrimary600

    #expect(result == expected, "ShapeStyle `.ckPrimary600` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary700_returnsCorrectColor() {
    let expected = Color(.ckPrimary700)

    let result = Color.ckPrimary700

    #expect(result == expected, "ShapeStyle `.ckPrimary700` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary800_returnsCorrectColor() {
    let expected = Color(.ckPrimary800)

    let result = Color.ckPrimary800

    #expect(result == expected, "ShapeStyle `.ckPrimary800` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckPrimary900_returnsCorrectColor() {
    let expected = Color(.ckPrimary900)

    let result = Color.ckPrimary900

    #expect(result == expected, "ShapeStyle `.ckPrimary900` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary50_returnsCorrectColor() {
    let expected = Color(.ckSecondary50)

    let result = Color.ckSecondary50

    #expect(result == expected, "ShapeStyle `.ckSecondary50` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary100_returnsCorrectColor() {
    let expected = Color(.ckSecondary100)

    let result = Color.ckSecondary100

    #expect(result == expected, "ShapeStyle `.ckSecondary100` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary200_returnsCorrectColor() {
    let expected = Color(.ckSecondary200)

    let result = Color.ckSecondary200

    #expect(result == expected, "ShapeStyle `.ckSecondary200` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary300_returnsCorrectColor() {
    let expected = Color(.ckSecondary300)

    let result = Color.ckSecondary300

    #expect(result == expected, "ShapeStyle `.ckSecondary300` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary400_returnsCorrectColor() {
    let expected = Color(.ckSecondary400)

    let result = Color.ckSecondary400

    #expect(result == expected, "ShapeStyle `.ckSecondary400` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary500_returnsCorrectColor() {
    let expected = Color(.ckSecondary500)

    let result = Color.ckSecondary500

    #expect(result == expected, "ShapeStyle `.ckSecondary500` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary600_returnsCorrectColor() {
    let expected = Color(.ckSecondary600)

    let result = Color.ckSecondary600

    #expect(result == expected, "ShapeStyle `.ckSecondary600` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary700_returnsCorrectColor() {
    let expected = Color(.ckSecondary700)

    let result = Color.ckSecondary700

    #expect(result == expected, "ShapeStyle `.ckSecondary700` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary800_returnsCorrectColor() {
    let expected = Color(.ckSecondary800)

    let result = Color.ckSecondary800

    #expect(result == expected, "ShapeStyle `.ckSecondary800` must be equal to `\(expected)`.")
  }

  @Test func shapeStyle_ckSecondary900_returnsCorrectColor() {
    let expected = Color(.ckSecondary900)

    let result = Color.ckSecondary900

    #expect(result == expected, "ShapeStyle `.ckSecondary900` must be equal to `\(expected)`.")
  }
}
