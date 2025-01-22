//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
@testable import CanvasKit

struct CKFontWeightTests {
  
  // MARK: - Font Weight
  @Test func fontWeight_bold_returnsValueUrbanistBold() {
    let expected = "Urbanist-Bold"
    
    let result = CKFontWeight.bold.fontName
    
    #expect(result == expected, "CKFontWeight `.bold` must return the font name `Urbanist-Bold`.")
  }
  
  @Test func fontWeight_medium_returnsValueUrbanistMedium() {
    let expected = "Urbanist-Medium"
    
    let result = CKFontWeight.medium.fontName
    
    #expect(result == expected, "CKFontWeight `.medium` must return the font name `Urbanist-Medium`.")
  }
  
  @Test func fontWeight_regular_returnsValueUrbanistRegular() {
    let expected = "Urbanist-Regular"
    
    let result = CKFontWeight.regular.fontName
    
    #expect(result == expected, "CKFontWeight `.regular` must return the font name `Urbanist-Regular`.")
  }
  
  @Test func fontWeight_semiBold_returnsValueUrbanistSemiBold() {
    let expected = "Urbanist-SemiBold"
    
    let result = CKFontWeight.semiBold.fontName
    
    #expect(result == expected, "CKFontWeight `.semiBold` must return the font name `Urbanist-SemiBold`.")
  }
}
