//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
@testable import CanvasKit

struct ThemeTypeTests {

  @Test func constant_key_isEqualToStringCanvasKitTheme()  {
    let expected = "CanvasKitTheme"

    let result = ThemeType.key

    #expect(expected == result, "`ThemeType.key` must be equal `\(expected)`")
  }

  @Test func case_system_mustNotBeNil()  {
    let result = ThemeType.system

    #expect(result != nil, "`ThemeType.system` must exists.")
  }

  @Test func case_light_mustNotBeNil()  {
    let result = ThemeType.light

    #expect(result != nil, "`ThemeType.light` must exists.")
  }

  @Test func case_dark_mustNotBeNil()  {
    let result = ThemeType.dark

    #expect(result != nil, "`ThemeType.dark` must exists.")
  }
}
