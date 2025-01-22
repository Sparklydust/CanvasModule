//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Testing
import SwiftUI
@testable import CanvasKit

struct CKFontStyleTests {

  // MARK: - Font Style
  @Test func fontStyle_largeTitle_returnsTextStyleLargeTitle() {
    let expected = Font.TextStyle.largeTitle

    let result = CKFontStyle.largeTitle.textStyle

    #expect(result == expected, "CKFontStyle `.largeTitle` must return `Font.TextStyle.largeTitle`.")
  }

  @Test func fontStyle_title_returnsTextStyleTitle() {
    let expected = Font.TextStyle.title

    let result = CKFontStyle.title.textStyle

    #expect(result == expected, "CKFontStyle `.title` must return `Font.TextStyle.title1`.")
  }

  @Test func fontStyle_title2_returnsTextStyleTitle2() {
    let expected = Font.TextStyle.title2

    let result = CKFontStyle.title2.textStyle

    #expect(result == expected, "CKFontStyle `.title2` must return `Font.TextStyle.title2`.")
  }

  @Test func fontStyle_title3_returnsTextStyleTitle3() {
    let expected = Font.TextStyle.title3

    let result = CKFontStyle.title3.textStyle

    #expect(result == expected, "CKFontStyle `.title3` must return `Font.TextStyle.title3`.")
  }

  @Test func fontStyle_headline_returnsTextStyleHeadline() {
    let expected = Font.TextStyle.headline

    let result = CKFontStyle.headline.textStyle

    #expect(result == expected, "CKFontStyle `.headline` must return `Font.TextStyle.headline`.")
  }

  @Test func fontStyle_subheadline_returnsTextStyleSubheadline() {
    let expected = Font.TextStyle.subheadline

    let result = CKFontStyle.subheadline.textStyle

    #expect(result == expected, "CKFontStyle `.subheadline` must return `Font.TextStyle.subheadline`.")
  }

  @Test func fontStyle_body_returnsTextStyleBody() {
    let expected = Font.TextStyle.body

    let result = CKFontStyle.body.textStyle

    #expect(result == expected, "CKFontStyle `.body` must return `Font.TextStyle.body`.")
  }

  @Test func fontStyle_callout_returnsTextStyleCallout() {
    let expected = Font.TextStyle.callout

    let result = CKFontStyle.callout.textStyle

    #expect(result == expected, "CKFontStyle `.callout` must return `Font.TextStyle.callout`.")
  }

  @Test func fontStyle_footnote_returnsTextStyleFootnote() {
    let expected = Font.TextStyle.footnote

    let result = CKFontStyle.footnote.textStyle

    #expect(result == expected, "CKFontStyle `.footnote` must return `Font.TextStyle.footnote`.")
  }

  @Test func fontStyle_caption_returnsTextStyleCaption() {
    let expected = Font.TextStyle.caption

    let result = CKFontStyle.caption.textStyle

    #expect(result == expected, "CKFontStyle `.caption` must return `Font.TextStyle.caption1`.")
  }

  @Test func fontStyle_caption2_returnsTextStyleCaption2() {
    let expected = Font.TextStyle.caption2

    let result = CKFontStyle.caption2.textStyle

    #expect(result == expected, "CKFontStyle `.caption2` must return `Font.TextStyle.caption2`.")
  }

  // MARK: - Default Font Weight
  @Test func defaultFontWeight_largeTitle_returnsValueBold() {
    let expected = CKFontWeight.bold

    let result = CKFontStyle.largeTitle.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.largeTitle` must have a default font weight of `.bold`.")
  }

  @Test func defaultFontWeight_title_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.title.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.title` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_title2_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.title2.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.title2` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_title3_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.title3.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.title3` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_headline_returnsValueSemiBold() {
    let expected = CKFontWeight.semiBold

    let result = CKFontStyle.headline.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.headline` must have a default font weight of `.semiBold`.")
  }

  @Test func defaultFontWeight_subheadline_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.subheadline.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.subheadline` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_body_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.body.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.body` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_callout_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.callout.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.callout` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_footnote_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.footnote.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.footnote` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_caption_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.caption.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.caption` must have a default font weight of `.regular`.")
  }

  @Test func defaultFontWeight_caption2_returnsValueRegular() {
    let expected = CKFontWeight.regular

    let result = CKFontStyle.caption2.defaultFontWeight

    #expect(result == expected, "CKFontStyle `.caption2` must have a default font weight of `.regular`.")
  }

  // MARK: - Line Height Multiplier
  @Test func lineHeightMultiplier_largeTitle_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.largeTitle.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.largeTitle` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_title_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.title.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.title` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_title2_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.title2.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.title2` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_title3_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.title3.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.title3` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_headline_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.headline.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.headline` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_subheadline_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.subheadline.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.subheadline` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_body_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.body.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.body` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_callout_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.callout.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.callout` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_footnote_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.footnote.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.footnote` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_caption_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.caption.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.caption` must have a line height multiplier of `1.6`.")
  }

  @Test func lineHeightMultiplier_caption2_returnsValue1Dot6() {
    let expected: CGFloat = 1.6

    let result = CKFontStyle.caption2.lineHeightMultiplier

    #expect(result == expected, "CKFontStyle `.caption2` must have a line height multiplier of `1.6`.")
  }

  // MARK: - Size
  @Test func size_largeTitle_returnsValue48() {
    let expected: CGFloat = 48

    let result = CKFontStyle.largeTitle.size

    #expect(result == expected, "CKFontStyle `.largeTitle` must have a size of `48`.")
  }

  @Test func size_title_returnsValue40() {
    let expected: CGFloat = 40

    let result = CKFontStyle.title.size

    #expect(result == expected, "CKFontStyle `.title` must have a size of `40`.")
  }

  @Test func size_title2_returnsValue32() {
    let expected: CGFloat = 32

    let result = CKFontStyle.title2.size

    #expect(result == expected, "CKFontStyle `.title2` must have a size of `32`.")
  }

  @Test func size_title3_returnsValue24() {
    let expected: CGFloat = 24

    let result = CKFontStyle.title3.size

    #expect(result == expected, "CKFontStyle `.title3` must have a size of `24`.")
  }

  @Test func size_headline_returnsValue20() {
    let expected: CGFloat = 20

    let result = CKFontStyle.headline.size

    #expect(result == expected, "CKFontStyle `.headline` must have a size of `20`.")
  }

  @Test func size_subheadline_returnsValue18() {
    let expected: CGFloat = 18

    let result = CKFontStyle.subheadline.size

    #expect(result == expected, "CKFontStyle `.subheadline` must have a size of `18`.")
  }

  @Test func size_body_returnsValue18() {
    let expected: CGFloat = 18

    let result = CKFontStyle.body.size

    #expect(result == expected, "CKFontStyle `.body` must have a size of `18`.")
  }

  @Test func size_callout_returnsValue16() {
    let expected: CGFloat = 16

    let result = CKFontStyle.callout.size

    #expect(result == expected, "CKFontStyle `.callout` must have a size of `16`.")
  }

  @Test func size_footnote_returnsValue14() {
    let expected: CGFloat = 14

    let result = CKFontStyle.footnote.size

    #expect(result == expected, "CKFontStyle `.footnote` must have a size of `14`.")
  }

  @Test func size_caption_returnsValue12() {
    let expected: CGFloat = 12

    let result = CKFontStyle.caption.size

    #expect(result == expected, "CKFontStyle `.caption` must have a size of `12`.")
  }

  @Test func size_caption2_returnsValue10() {
    let expected: CGFloat = 10

    let result = CKFontStyle.caption2.size

    #expect(result == expected, "CKFontStyle `.caption2` must have a size of `10`.")
  }
}
