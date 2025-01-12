//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct Color_ExtensionTests {
  
  @Test func color_ckDisabled_returnsCorrectColor() {
    let expected = Color(.ckDisabled)

    let result = Color.ckDisabled
    
    #expect(result == expected, "Design system colors `.ckDisabled` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDisabledButton_returnsCorrectColor() {
    let expected = Color(.ckDisabledButton)

    let result = Color.ckDisabledButton
    
    #expect(result == expected, "Design system colors `.ckDisabledButton` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckError_returnsCorrectColor() {
    let expected = Color(.ckError)

    let result = Color.ckError

    #expect(result == expected, "Design system colors `.ckError` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckInfo_returnsCorrectColor() {
    let expected = Color(.ckInfo)

    let result = Color.ckInfo
    
    #expect(result == expected, "Design system colors `.ckInfo` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSuccess_returnsCorrectColor() {
    let expected = Color(.ckSuccess)

    let result = Color.ckSuccess
    
    #expect(result == expected, "Design system colors `.ckSuccess` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckWarning_returnsCorrectColor() {
    let expected = Color(.ckWarning)

    let result = Color.ckWarning
    
    #expect(result == expected, "Design system colors `.ckWarning` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundBlue_returnsCorrectColor() {
    let expected = Color(.ckBackgroundBlue)

    let result = Color.ckBackgroundBlue
    
    #expect(result == expected, "Design system colors `.ckBackgroundBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundBrown_returnsCorrectColor() {
    let expected = Color(.ckBackgroundBrown)

    let result = Color.ckBackgroundBrown
    
    #expect(result == expected, "Design system colors `.ckBackgroundBrown` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundGreen_returnsCorrectColor() {
    let expected = Color(.ckBackgroundGreen)

    let result = Color.ckBackgroundGreen
    
    #expect(result == expected, "Design system colors `.ckBackgroundGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundOrange_returnsCorrectColor() {
    let expected = Color(.ckBackgroundOrange)

    let result = Color.ckBackgroundOrange
    
    #expect(result == expected, "Design system colors `.ckBackgroundOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundPurple_returnsCorrectColor() {
    let expected = Color(.ckBackgroundPurple)

    let result = Color.ckBackgroundPurple
    
    #expect(result == expected, "Design system colors `.ckBackgroundPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundRed_returnsCorrectColor() {
    let expected = Color(.ckBackgroundRed)
    
    let result = Color.ckBackgroundRed
    
    #expect(result == expected, "Design system colors `.ckBackgroundRed` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundTeal_returnsCorrectColor() {
    let expected = Color(.ckBackgroundTeal)
    
    let result = Color.ckBackgroundTeal
    
    #expect(result == expected, "Design system colors `.ckBackgroundTeal` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBackgroundYellow_returnsCorrectColor() {
    let expected = Color(.ckBackgroundYellow)
    
    let result = Color.ckBackgroundYellow
    
    #expect(result == expected, "Design system colors `.ckBackgroundYellow` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDark1_returnsCorrectColor() {
    let expected = Color(.ckDark1)
    
    let result = Color.ckDark1
    
    #expect(result == expected, "Design system colors `.ckDark1` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDark2_returnsCorrectColor() {
    let expected = Color(.ckDark2)
    
    let result = Color.ckDark2
    
    #expect(result == expected, "Design system colors `.ckDark2` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDark3_returnsCorrectColor() {
    let expected = Color(.ckDark3)
    
    let result = Color.ckDark3
    
    #expect(result == expected, "Design system colors `.ckDark3` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDark4_returnsCorrectColor() {
    let expected = Color(.ckDark4)
    
    let result = Color.ckDark4
    
    #expect(result == expected, "Design system colors `.ckDark4` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientBlueFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientBlueFirst)
    
    let result = Color.ckGradientBlueFirst
    
    #expect(result == expected, "Design system colors `.ckGradientBlueFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientBlueSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientBlueSecond)
    
    let result = Color.ckGradientBlueSecond
    
    #expect(result == expected, "Design system colors `.ckGradientBlueSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientBrownFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientBrownFirst)
    
    let result = Color.ckGradientBrownFirst
    
    #expect(result == expected, "Design system colors `.ckGradientBrownFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientBrownSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientBrownSecond)
    
    let result = Color.ckGradientBrownSecond
    
    #expect(result == expected, "Design system colors `.ckGradientBrownSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientGreenFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientGreenFirst)
    
    let result = Color.ckGradientGreenFirst

    #expect(result == expected, "Design system colors `.ckGradientGreenFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientGreenSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientGreenSecond)
    
    let result = Color.ckGradientGreenSecond
    
    #expect(result == expected, "Design system colors `.ckGradientGreenSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientOrangeFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientOrangeFirst)
    
    let result = Color.ckGradientOrangeFirst
    
    #expect(result == expected, "Design system colors `.ckGradientOrangeFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientOrangeSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientOrangeSecond)
    
    let result = Color.ckGradientOrangeSecond
    
    #expect(result == expected, "Design system colors `.ckGradientOrangeSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary50_returnsCorrectColor() {
    let expected = Color(.ckPrimary50)
    
    let result = Color.ckPrimary50
    
    #expect(result == expected, "Design system colors `.ckPrimary50` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary100_returnsCorrectColor() {
    let expected = Color(.ckPrimary100)
    
    let result = Color.ckPrimary100
    
    #expect(result == expected, "Design system colors `.ckPrimary100` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary200_returnsCorrectColor() {
    let expected = Color(.ckPrimary200)
    
    let result = Color.ckPrimary200
    
    #expect(result == expected, "Design system colors `.ckPrimary200` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary300_returnsCorrectColor() {
    let expected = Color(.ckPrimary300)

    let result = Color.ckPrimary300

    #expect(result == expected, "Design system colors `.ckPrimary300` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary400_returnsCorrectColor() {
    let expected = Color(.ckPrimary400)

    let result = Color.ckPrimary400

    #expect(result == expected, "Design system colors `.ckPrimary400` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary500_returnsCorrectColor() {
    let expected = Color(.ckPrimary500)

    let result = Color.ckPrimary500

    #expect(result == expected, "Design system colors `.ckPrimary500` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary600_returnsCorrectColor() {
    let expected = Color(.ckPrimary600)

    let result = Color.ckPrimary600

    #expect(result == expected, "Design system colors `.ckPrimary600` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary700_returnsCorrectColor() {
    let expected = Color(.ckPrimary700)

    let result = Color.ckPrimary700

    #expect(result == expected, "Design system colors `.ckPrimary700` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary800_returnsCorrectColor() {
    let expected = Color(.ckPrimary800)

    let result = Color.ckPrimary800

    #expect(result == expected, "Design system colors `.ckPrimary800` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPrimary900_returnsCorrectColor() {
    let expected = Color(.ckPrimary900)
    
    let result = Color.ckPrimary900
    
    #expect(result == expected, "Design system colors `.ckPrimary900` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientPurpleFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientPurpleFirst)
    
    let result = Color.ckGradientPurpleFirst
    
    #expect(result == expected, "Design system colors `.ckGradientPurpleFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientPurpleSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientPurpleSecond)
    
    let result = Color.ckGradientPurpleSecond
    
    #expect(result == expected, "Design system colors `.ckGradientPurpleSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientRedFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientRedFirst)
    
    let result = Color.ckGradientRedFirst
    
    #expect(result == expected, "Design system colors `.ckGradientRedFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientRedSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientRedSecond)
    
    let result = Color.ckGradientRedSecond
    
    #expect(result == expected, "Design system colors `.ckGradientRedSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientTealFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientTealFirst)
    
    let result = Color.ckGradientTealFirst
    
    #expect(result == expected, "Design system colors `.ckGradientTealFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientTealSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientTealSecond)
    
    let result = Color.ckGradientTealSecond
    
    #expect(result == expected, "Design system colors `.ckGradientTealSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientYellowFirst_returnsCorrectColor() {
    let expected = Color(.ckGradientYellowFirst)
    
    let result = Color.ckGradientYellowFirst
    
    #expect(result == expected, "Design system colors `.ckGradientYellowFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGradientYellowSecond_returnsCorrectColor() {
    let expected = Color(.ckGradientYellowSecond)
    
    let result = Color.ckGradientYellowSecond
    
    #expect(result == expected, "Design system colors `.ckGradientYellowSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary50_returnsCorrectColor() {
    let expected = Color(.ckSecondary50)
    
    let result = Color.ckSecondary50
    
    #expect(result == expected, "Design system colors `.ckSecondary50` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary100_returnsCorrectColor() {
    let expected = Color(.ckSecondary100)
    
    let result = Color.ckSecondary100
    
    #expect(result == expected, "Design system colors `.ckSecondary100` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary200_returnsCorrectColor() {
    let expected = Color(.ckSecondary200)
    
    let result = Color.ckSecondary200
    
    #expect(result == expected, "Design system colors `.ckSecondary200` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary300_returnsCorrectColor() {
    let expected = Color(.ckSecondary300)
    
    let result = Color.ckSecondary300
    
    #expect(result == expected, "Design system colors `.ckSecondary300` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary400_returnsCorrectColor() {
    let expected = Color(.ckSecondary400)
    
    let result = Color.ckSecondary400
    
    #expect(result == expected, "Design system colors `.ckSecondary400` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary500_returnsCorrectColor() {
    let expected = Color(.ckSecondary500)
    
    let result = Color.ckSecondary500
    
    #expect(result == expected, "Design system colors `.ckSecondary500` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary600_returnsCorrectColor() {
    let expected = Color(.ckSecondary600)
    
    let result = Color.ckSecondary600
    
    #expect(result == expected, "Design system colors `.ckSecondary600` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary700_returnsCorrectColor() {
    let expected = Color(.ckSecondary700)
    
    let result = Color.ckSecondary700
    
    #expect(result == expected, "Design system colors `.ckSecondary700` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary800_returnsCorrectColor() {
    let expected = Color(.ckSecondary800)
    
    let result = Color.ckSecondary800
    
    #expect(result == expected, "Design system colors `.ckSecondary800` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckSecondary900_returnsCorrectColor() {
    let expected = Color(.ckSecondary900)
    
    let result = Color.ckSecondary900
    
    #expect(result == expected, "Design system colors `.ckSecondary900` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckAmber_returnsCorrectColor() {
    let expected = Color(.ckAmber)
    
    let result = Color.ckAmber
    
    #expect(result == expected, "Design system colors `.ckAmber` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBlack_returnsCorrectColor() {
    let expected = Color(.ckBlack)
    
    let result = Color.ckBlack
    
    #expect(result == expected, "Design system colors `.ckBlack` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBlue_returnsCorrectColor() {
    let expected = Color(.ckBlue)
    
    let result = Color.ckBlue
    
    #expect(result == expected, "Design system colors `.ckBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTeal_returnsCorrectColor() {
    let expected = Color(.ckTeal)
    
    let result = Color.ckTeal
    
    #expect(result == expected, "Design system colors `.ckTeal` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBlueGrey_returnsCorrectColor() {
    let expected = Color(.ckBlueGrey)
    
    let result = Color.ckBlueGrey
    
    #expect(result == expected, "Design system colors `.ckBlueGrey` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckBrown_returnsCorrectColor() {
    let expected = Color(.ckBrown)
    
    let result = Color.ckBrown
    
    #expect(result == expected, "Design system colors `.ckBrown` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckCyan_returnsCorrectColor() {
    let expected = Color(.ckCyan)
    
    let result = Color.ckCyan
    
    #expect(result == expected, "Design system colors `.ckCyan` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDeepOrange_returnsCorrectColor() {
    let expected = Color(.ckDeepOrange)
    
    let result = Color.ckDeepOrange
    
    #expect(result == expected, "Design system colors `.otherDeepOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckDeepPurple_returnsCorrectColor() {
    let expected = Color(.ckDeepPurple)
    
    let result = Color.ckDeepPurple
    
    #expect(result == expected, "Design system colors `.ckDeepPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckGreen_returnsCorrectColor() {
    let expected = Color(.ckGreen)
    
    let result = Color.ckGreen
    
    #expect(result == expected, "Design system colors `.ckGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckIndigo_returnsCorrectColor() {
    let expected = Color(.ckIndigo)
    
    let result = Color.ckIndigo
    
    #expect(result == expected, "Design system colors `.ckIndigo` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckLightBlue_returnsCorrectColor() {
    let expected = Color(.ckLightBlue)
    
    let result = Color.ckLightBlue
    
    #expect(result == expected, "Design system colors `.ckLightBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckLightGreen_returnsCorrectColor() {
    let expected = Color(.ckLightGreen)
    
    let result = Color.ckLightGreen
    
    #expect(result == expected, "Design system colors `.ckLightGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckLime_returnsCorrectColor() {
    let expected = Color(.ckLime)
    
    let result = Color.ckLime
    
    #expect(result == expected, "Design system colors `.ckLime` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckOrange_returnsCorrectColor() {
    let expected = Color(.ckOrange)
    
    let result = Color.ckOrange
    
    #expect(result == expected, "Design system colors `.ckOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPink_returnsCorrectColor() {
    let expected = Color(.ckPink)
    
    let result = Color.ckPink
    
    #expect(result == expected, "Design system colors `.ckPink` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckPurple_returnsCorrectColor() {
    let expected = Color(.ckPurple)
    
    let result = Color.ckPurple
    
    #expect(result == expected, "Design system colors `.ckPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckRed_returnsCorrectColor() {
    let expected = Color(.ckRed)
    
    let result = Color.ckRed
    
    #expect(result == expected, "Design system colors `.ckRed` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckWhite_returnsCorrectColor() {
    let expected = Color(.ckWhite)
    
    let result = Color.ckWhite
    
    #expect(result == expected, "Design system colors `.ckWhite` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckYellow_returnsCorrectColor() {
    let expected = Color(.ckYellow)
    
    let result = Color.ckYellow
    
    #expect(result == expected, "Design system colors `.ckYellow` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckShadowCard_returnsCorrectColor() {
    let expected = Color(.ckShadowCard)

    let result = Color.ckShadowCard

    #expect(result == expected, "Design system colors `.ckShadowCard` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentBlue_returnsCorrectColor() {
    let expected = Color(.ckTransparentBlue)
    
    let result = Color.ckTransparentBlue
    
    #expect(result == expected, "Design system colors `.ckTransparentBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentBrown_returnsCorrectColor() {
    let expected = Color(.ckTransparentBrown)
    
    let result = Color.ckTransparentBrown
    
    #expect(result == expected, "Design system colors `.ckTransparentBrown` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentGreen_returnsCorrectColor() {
    let expected = Color(.ckTransparentGreen)
    
    let result = Color.ckTransparentGreen
    
    #expect(result == expected, "Design system colors `.ckTransparentGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentGrey_returnsCorrectColor() {
    let expected = Color(.ckTransparentGrey)
    
    let result = Color.ckTransparentGrey
    
    #expect(result == expected, "Design system colors `.ckTransparentGrey` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentOrange_returnsCorrectColor() {
    let expected = Color(.ckTransparentOrange)
    
    let result = Color.ckTransparentOrange
    
    #expect(result == expected, "Design system colors `.ckTransparentOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentPurple_returnsCorrectColor() {
    let expected = Color(.ckTransparentPurple)
    
    let result = Color.ckTransparentPurple
    
    #expect(result == expected, "Design system colors `.ckTransparentPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentRed_returnsCorrectColor() {
    let expected = Color(.ckTransparentRed)
    
    let result = Color.ckTransparentRed
    
    #expect(result == expected, "Design system colors `.ckTransparentRed` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentTeal_returnsCorrectColor() {
    let expected = Color(.ckTransparentTeal)
    
    let result = Color.ckTransparentTeal
    
    #expect(result == expected, "Design system colors `.ckTransparentTeal` must be equal to `\(expected)`.")
  }
  
  @Test func color_ckTransparentYellow_returnsCorrectColor() {
    let expected = Color(.ckTransparentYellow)
    
    let result = Color.ckTransparentYellow
    
    #expect(result == expected, "Design system colors `.ckTransparentYellow` must be equal to `\(expected)`.")
  }
}
