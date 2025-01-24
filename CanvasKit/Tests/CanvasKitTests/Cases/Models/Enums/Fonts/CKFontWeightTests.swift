//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
@testable import CanvasKit

struct CKFontWeightTests {
  
  // MARK: - Font Weight
  @Test func fontWeight_bold_returnsFontFamilyUrbanistBold() {
    let expected: FontConvertible = FontFamily.Urbanist.bold

    let result = CKFontWeight.bold.fontName
    
    #expect(result == expected, "CKFontWeight `.bold` must return the font name `FontFamily.Urbanist.bold` from FontConvertible.")
  }
  
  @Test func fontWeight_medium_returnsFontFamilyUrbanistMedium() {
    let expected: FontConvertible = FontFamily.Urbanist.medium

    let result = CKFontWeight.medium.fontName
    
    #expect(result == expected, "CKFontWeight `.medium` must return the font name `FontFamily.Urbanist.medium` from FontConvertible.")
  }
  
  @Test func fontWeight_regular_returnsFontFamilyUrbanistRegular() {
    let expected: FontConvertible = FontFamily.Urbanist.regular

    let result = CKFontWeight.regular.fontName
    
    #expect(result == expected, "CKFontWeight `.regular` must return the font name `FontFamily.Urbanist.regular` from FontConvertible.")
  }
  
  @Test func fontWeight_semiBold_returnsFontFamilyUrbanistSemiBold() {
    let expected: FontConvertible = FontFamily.Urbanist.semiBold
    
    let result = CKFontWeight.semiBold.fontName
    
    #expect(result == expected, "CKFontWeight `.semiBold` must return the font name `FontFamily.Urbanist.semiBold` from FontConvertible.")
  }
}
