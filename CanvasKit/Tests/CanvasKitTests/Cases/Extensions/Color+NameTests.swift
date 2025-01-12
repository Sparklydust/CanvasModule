//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct Color_ExtensionTests {
  
  @Test func color_disabled_returnsCorrectColor() {
    let expected = Color(.disabled)
    
    let result = Color.disabled
    
    #expect(result == expected, "Design system colors `.disabled` must be equal to `\(expected)`.")
  }
  
  @Test func color_disabledButton_returnsCorrectColor() {
    let expected = Color(.disabledButton)
    
    let result = Color.disabledButton
    
    #expect(result == expected, "Design system colors `.disabledButton` must be equal to `\(expected)`.")
  }
  
  @Test func color_error_returnsCorrectColor() {
    let expected = Color(.error)
    
    let result = Color.error
    
    #expect(result == expected, "Design system colors `.error` must be equal to `\(expected)`.")
  }
  
  @Test func color_info_returnsCorrectColor() {
    let expected = Color(.info)
    
    let result = Color.info
    
    #expect(result == expected, "Design system colors `.info` must be equal to `\(expected)`.")
  }
  
  @Test func color_success_returnsCorrectColor() {
    let expected = Color(.success)
    
    let result = Color.success
    
    #expect(result == expected, "Design system colors `.success` must be equal to `\(expected)`.")
  }
  
  @Test func color_warning_returnsCorrectColor() {
    let expected = Color(.warning)
    
    let result = Color.warning
    
    #expect(result == expected, "Design system colors `.warning` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundBlue_returnsCorrectColor() {
    let expected = Color(.backgroundBlue)
    
    let result = Color.backgroundBlue
    
    #expect(result == expected, "Design system colors `.backgroundBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundBrown_returnsCorrectColor() {
    let expected = Color(.backgroundBrown)
    
    let result = Color.backgroundBrown
    
    #expect(result == expected, "Design system colors `.backgroundBrown` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundGreen_returnsCorrectColor() {
    let expected = Color(.backgroundGreen)
    
    let result = Color.backgroundGreen
    
    #expect(result == expected, "Design system colors `.backgroundGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundOrange_returnsCorrectColor() {
    let expected = Color(.backgroundOrange)
    
    let result = Color.backgroundOrange
    
    #expect(result == expected, "Design system colors `.backgroundOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundPurple_returnsCorrectColor() {
    let expected = Color(.backgroundPurple)
    
    let result = Color.backgroundPurple
    
    #expect(result == expected, "Design system colors `.backgroundPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundRed_returnsCorrectColor() {
    let expected = Color(.backgroundRed)
    
    let result = Color.backgroundRed
    
    #expect(result == expected, "Design system colors `.backgroundRed` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundTeal_returnsCorrectColor() {
    let expected = Color(.backgroundTeal)
    
    let result = Color.backgroundTeal
    
    #expect(result == expected, "Design system colors `.backgroundTeal` must be equal to `\(expected)`.")
  }
  
  @Test func color_backgroundYellow_returnsCorrectColor() {
    let expected = Color(.backgroundYellow)
    
    let result = Color.backgroundYellow
    
    #expect(result == expected, "Design system colors `.backgroundYellow` must be equal to `\(expected)`.")
  }
  
  @Test func color_dark1_returnsCorrectColor() {
    let expected = Color(.dark1)
    
    let result = Color.dark1
    
    #expect(result == expected, "Design system colors `.dark1` must be equal to `\(expected)`.")
  }
  
  @Test func color_dark2_returnsCorrectColor() {
    let expected = Color(.dark2)
    
    let result = Color.dark2
    
    #expect(result == expected, "Design system colors `.dark2` must be equal to `\(expected)`.")
  }
  
  @Test func color_dark3_returnsCorrectColor() {
    let expected = Color(.dark3)
    
    let result = Color.dark3
    
    #expect(result == expected, "Design system colors `.dark3` must be equal to `\(expected)`.")
  }
  
  @Test func color_dark4_returnsCorrectColor() {
    let expected = Color(.dark4)
    
    let result = Color.dark4
    
    #expect(result == expected, "Design system colors `.dark4` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientBlueFirst_returnsCorrectColor() {
    let expected = Color(.gradientBlueFirst)
    
    let result = Color.gradientBlueFirst
    
    #expect(result == expected, "Design system colors `.gradientBlueFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientBlueSecond_returnsCorrectColor() {
    let expected = Color(.gradientBlueSecond)
    
    let result = Color.gradientBlueSecond
    
    #expect(result == expected, "Design system colors `.gradientBlueSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientBrownFirst_returnsCorrectColor() {
    let expected = Color(.gradientBrownFirst)
    
    let result = Color.gradientBrownFirst
    
    #expect(result == expected, "Design system colors `.gradientBrownFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientBrownSecond_returnsCorrectColor() {
    let expected = Color(.gradientBrownSecond)
    
    let result = Color.gradientBrownSecond
    
    #expect(result == expected, "Design system colors `.gradientBrownSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientGreenFirst_returnsCorrectColor() {
    let expected = Color(.gradientGreenFirst)
    
    let result = Color.gradientGreenFirst
    
    #expect(result == expected, "Design system colors `.gradientGreenFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientGreenSecond_returnsCorrectColor() {
    let expected = Color(.gradientGreenSecond)
    
    let result = Color.gradientGreenSecond
    
    #expect(result == expected, "Design system colors `.gradientGreenSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientOrangeFirst_returnsCorrectColor() {
    let expected = Color(.gradientOrangeFirst)
    
    let result = Color.gradientOrangeFirst
    
    #expect(result == expected, "Design system colors `.gradientOrangeFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientOrangeSecond_returnsCorrectColor() {
    let expected = Color(.gradientOrangeSecond)
    
    let result = Color.gradientOrangeSecond
    
    #expect(result == expected, "Design system colors `.gradientOrangeSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_primary50_returnsCorrectColor() {
    let expected = Color(.primary50)
    
    let result = Color.primary50
    
    #expect(result == expected, "Design system colors `.primary50` must be equal to `\(expected)`.")
  }
  
  @Test func color_primary100_returnsCorrectColor() {
    let expected = Color(.primary100)
    
    let result = Color.primary100
    
    #expect(result == expected, "Design system colors `.primary100` must be equal to `\(expected)`.")
  }
  
  @Test func color_primary200_returnsCorrectColor() {
    let expected = Color(.primary200)
    
    let result = Color.primary200
    
    #expect(result == expected, "Design system colors `.primary200` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientPurpleFirst_returnsCorrectColor() {
    let expected = Color(.gradientPurpleFirst)
    
    let result = Color.gradientPurpleFirst
    
    #expect(result == expected, "Design system colors `.gradientPurpleFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientPurpleSecond_returnsCorrectColor() {
    let expected = Color(.gradientPurpleSecond)
    
    let result = Color.gradientPurpleSecond
    
    #expect(result == expected, "Design system colors `.gradientPurpleSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientRedFirst_returnsCorrectColor() {
    let expected = Color(.gradientRedFirst)
    
    let result = Color.gradientRedFirst
    
    #expect(result == expected, "Design system colors `.gradientRedFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientRedSecond_returnsCorrectColor() {
    let expected = Color(.gradientRedSecond)
    
    let result = Color.gradientRedSecond
    
    #expect(result == expected, "Design system colors `.gradientRedSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientTealFirst_returnsCorrectColor() {
    let expected = Color(.gradientTealFirst)
    
    let result = Color.gradientTealFirst
    
    #expect(result == expected, "Design system colors `.gradientTealFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientTealSecond_returnsCorrectColor() {
    let expected = Color(.gradientTealSecond)
    
    let result = Color.gradientTealSecond
    
    #expect(result == expected, "Design system colors `.gradientTealSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientYellowFirst_returnsCorrectColor() {
    let expected = Color(.gradientYellowFirst)
    
    let result = Color.gradientYellowFirst
    
    #expect(result == expected, "Design system colors `.gradientYellowFirst` must be equal to `\(expected)`.")
  }
  
  @Test func color_gradientYellowSecond_returnsCorrectColor() {
    let expected = Color(.gradientYellowSecond)
    
    let result = Color.gradientYellowSecond
    
    #expect(result == expected, "Design system colors `.gradientYellowSecond` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary50_returnsCorrectColor() {
    let expected = Color(.secondary50)
    
    let result = Color.secondary50
    
    #expect(result == expected, "Design system colors `.secondary50` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary100_returnsCorrectColor() {
    let expected = Color(.secondary100)
    
    let result = Color.secondary100
    
    #expect(result == expected, "Design system colors `.secondary100` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary200_returnsCorrectColor() {
    let expected = Color(.secondary200)
    
    let result = Color.secondary200
    
    #expect(result == expected, "Design system colors `.secondary200` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary300_returnsCorrectColor() {
    let expected = Color(.secondary300)
    
    let result = Color.secondary300
    
    #expect(result == expected, "Design system colors `.secondary300` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary400_returnsCorrectColor() {
    let expected = Color(.secondary400)
    
    let result = Color.secondary400
    
    #expect(result == expected, "Design system colors `.secondary400` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary500_returnsCorrectColor() {
    let expected = Color(.secondary500)
    
    let result = Color.secondary500
    
    #expect(result == expected, "Design system colors `.secondary500` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary600_returnsCorrectColor() {
    let expected = Color(.secondary600)
    
    let result = Color.secondary600
    
    #expect(result == expected, "Design system colors `.secondary600` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary700_returnsCorrectColor() {
    let expected = Color(.secondary700)
    
    let result = Color.secondary700
    
    #expect(result == expected, "Design system colors `.secondary700` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary800_returnsCorrectColor() {
    let expected = Color(.secondary800)
    
    let result = Color.secondary800
    
    #expect(result == expected, "Design system colors `.secondary800` must be equal to `\(expected)`.")
  }
  
  @Test func color_secondary900_returnsCorrectColor() {
    let expected = Color(.secondary900)
    
    let result = Color.secondary900
    
    #expect(result == expected, "Design system colors `.secondary900` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherAmber_returnsCorrectColor() {
    let expected = Color(.otherAmber)
    
    let result = Color.otherAmber
    
    #expect(result == expected, "Design system colors `.otherAmber` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherBlack_returnsCorrectColor() {
    let expected = Color(.otherBlack)
    
    let result = Color.otherBlack
    
    #expect(result == expected, "Design system colors `.otherBlack` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherBlue_returnsCorrectColor() {
    let expected = Color(.otherBlue)
    
    let result = Color.otherBlue
    
    #expect(result == expected, "Design system colors `.otherBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherTeal_returnsCorrectColor() {
    let expected = Color(.otherTeal)
    
    let result = Color.otherTeal
    
    #expect(result == expected, "Design system colors `.otherTeal` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherBlueGrey_returnsCorrectColor() {
    let expected = Color(.otherBlueGrey)
    
    let result = Color.otherBlueGrey
    
    #expect(result == expected, "Design system colors `.otherBlueGrey` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherBrown_returnsCorrectColor() {
    let expected = Color(.otherBrown)
    
    let result = Color.otherBrown
    
    #expect(result == expected, "Design system colors `.otherBrown` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherCyan_returnsCorrectColor() {
    let expected = Color(.otherCyan)
    
    let result = Color.otherCyan
    
    #expect(result == expected, "Design system colors `.otherCyan` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherDeepOrange_returnsCorrectColor() {
    let expected = Color(.otherDeepOrange)
    
    let result = Color.otherDeepOrange
    
    #expect(result == expected, "Design system colors `.otherDeepOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherDeepPurple_returnsCorrectColor() {
    let expected = Color(.otherDeepPurple)
    
    let result = Color.otherDeepPurple
    
    #expect(result == expected, "Design system colors `.otherDeepPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherGreen_returnsCorrectColor() {
    let expected = Color(.otherGreen)
    
    let result = Color.otherGreen
    
    #expect(result == expected, "Design system colors `.otherGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherIndigo_returnsCorrectColor() {
    let expected = Color(.otherIndigo)
    
    let result = Color.otherIndigo
    
    #expect(result == expected, "Design system colors `.otherIndigo` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherLightBlue_returnsCorrectColor() {
    let expected = Color(.otherLightBlue)
    
    let result = Color.otherLightBlue
    
    #expect(result == expected, "Design system colors `.otherLightBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherLightGreen_returnsCorrectColor() {
    let expected = Color(.otherLightGreen)
    
    let result = Color.otherLightGreen
    
    #expect(result == expected, "Design system colors `.otherLightGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherLime_returnsCorrectColor() {
    let expected = Color(.otherLime)
    
    let result = Color.otherLime
    
    #expect(result == expected, "Design system colors `.otherLime` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherOrange_returnsCorrectColor() {
    let expected = Color(.otherOrange)
    
    let result = Color.otherOrange
    
    #expect(result == expected, "Design system colors `.otherOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherPink_returnsCorrectColor() {
    let expected = Color(.otherPink)
    
    let result = Color.otherPink
    
    #expect(result == expected, "Design system colors `.otherPink` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherPurple_returnsCorrectColor() {
    let expected = Color(.otherPurple)
    
    let result = Color.otherPurple
    
    #expect(result == expected, "Design system colors `.otherPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherRed_returnsCorrectColor() {
    let expected = Color(.otherRed)
    
    let result = Color.otherRed
    
    #expect(result == expected, "Design system colors `.otherRed` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherWhite_returnsCorrectColor() {
    let expected = Color(.otherWhite)
    
    let result = Color.otherWhite
    
    #expect(result == expected, "Design system colors `.otherWhite` must be equal to `\(expected)`.")
  }
  
  @Test func color_otherYellow_returnsCorrectColor() {
    let expected = Color(.otherYellow)
    
    let result = Color.otherYellow
    
    #expect(result == expected, "Design system colors `.otherYellow` must be equal to `\(expected)`.")
  }
  
  @Test func color_shadowCard_returnsCorrectColor() {
    let expected = Color(.shadowCard)
    
    let result = Color.shadowCard
    
    #expect(result == expected, "Design system colors `.shadowCard` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentBlue_returnsCorrectColor() {
    let expected = Color(.transparentBlue)
    
    let result = Color.transparentBlue
    
    #expect(result == expected, "Design system colors `.transparentBlue` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentBrown_returnsCorrectColor() {
    let expected = Color(.transparentBrown)
    
    let result = Color.transparentBrown
    
    #expect(result == expected, "Design system colors `.transparentBrown` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentGreen_returnsCorrectColor() {
    let expected = Color(.transparentGreen)
    
    let result = Color.transparentGreen
    
    #expect(result == expected, "Design system colors `.transparentGreen` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentGrey_returnsCorrectColor() {
    let expected = Color(.transparentGrey)
    
    let result = Color.transparentGrey
    
    #expect(result == expected, "Design system colors `.transparentGrey` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentOrange_returnsCorrectColor() {
    let expected = Color(.transparentOrange)
    
    let result = Color.transparentOrange
    
    #expect(result == expected, "Design system colors `.transparentOrange` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentPurple_returnsCorrectColor() {
    let expected = Color(.transparentPurple)
    
    let result = Color.transparentPurple
    
    #expect(result == expected, "Design system colors `.transparentPurple` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentRed_returnsCorrectColor() {
    let expected = Color(.transparentRed)
    
    let result = Color.transparentRed
    
    #expect(result == expected, "Design system colors `.transparentRed` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentTeal_returnsCorrectColor() {
    let expected = Color(.transparentTeal)
    
    let result = Color.transparentTeal
    
    #expect(result == expected, "Design system colors `.transparentTeal` must be equal to `\(expected)`.")
  }
  
  @Test func color_transparentYellow_returnsCorrectColor() {
    let expected = Color(.transparentYellow)
    
    let result = Color.transparentYellow
    
    #expect(result == expected, "Design system colors `.transparentYellow` must be equal to `\(expected)`.")
  }
}
