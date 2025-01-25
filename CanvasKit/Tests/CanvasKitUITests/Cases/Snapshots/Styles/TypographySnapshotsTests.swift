//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

final class TypographySnapshotsTests: XCTestCase {

  func testTypography_largeTitle_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .largeTitle, weight: .none,
          title: "Large Title", subtitle: "Default weight (Bold) / 48px"
        )

        TypographyInfoView(
          font: .largeTitle, weight: .bold,
          title: "Large Title", subtitle: "Bold / 48px"
        )

        TypographyInfoView(
          font: .largeTitle, weight: .semiBold,
          title: "Large Title", subtitle: "Semi-Bold / 48px"
        )

        TypographyInfoView(
          font: .largeTitle, weight: .medium,
          title: "Large Title", subtitle: "Medium / 48px"
        )

        TypographyInfoView(
          font: .largeTitle, weight: .regular,
          title: "Large Title", subtitle: "Regular / 48px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_title_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .title, weight: .none,
          title: "Title", subtitle: "Default weight (regular) / 40px"
        )

        TypographyInfoView(
          font: .title, weight: .bold,
          title: "Title", subtitle: "Bold / 40px"
        )

        TypographyInfoView(
          font: .title, weight: .semiBold,
          title: "Title", subtitle: "Semi-Bold / 40px"
        )

        TypographyInfoView(
          font: .title, weight: .medium,
          title: "Title", subtitle: "Medium / 40px"
        )

        TypographyInfoView(
          font: .title, weight: .regular,
          title: "Title", subtitle: "Regular / 40px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_title2_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .title2, weight: .none,
          title: "Title 2", subtitle: "Default weight (regular) / 32px"
        )

        TypographyInfoView(
          font: .title2, weight: .bold,
          title: "Title 2", subtitle: "Bold / 32px"
        )

        TypographyInfoView(
          font: .title2, weight: .semiBold,
          title: "Title 2", subtitle: "Semi-Bold / 32px"
        )

        TypographyInfoView(
          font: .title2, weight: .medium,
          title: "Title 2", subtitle: "Medium / 32px"
        )

        TypographyInfoView(
          font: .title2, weight: .regular,
          title: "Title 2", subtitle: "Regular / 32px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_title3_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .title3, weight: .none,
          title: "Title 3", subtitle: "Default weight (regular) / 24px"
        )

        TypographyInfoView(
          font: .title3, weight: .bold,
          title: "Title 3", subtitle: "Bold / 24px"
        )

        TypographyInfoView(
          font: .title3, weight: .semiBold,
          title: "Title 3", subtitle: "Semi-Bold / 24px"
        )

        TypographyInfoView(
          font: .title3, weight: .medium,
          title: "Title 3", subtitle: "Medium / 24px"
        )

        TypographyInfoView(
          font: .title3, weight: .regular,
          title: "Title 3", subtitle: "Regular / 24px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_headline_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .headline, weight: .none,
          title: "Headline", subtitle: "Default weight (Semi-Bold) / 20px"
        )

        TypographyInfoView(
          font: .headline, weight: .bold,
          title: "Headline", subtitle: "Bold / 20px"
        )

        TypographyInfoView(
          font: .headline, weight: .semiBold,
          title: "Headline", subtitle: "Semi-Bold / 20px"
        )

        TypographyInfoView(
          font: .headline, weight: .medium,
          title: "Headline", subtitle: "Medium / 20px"
        )

        TypographyInfoView(
          font: .headline, weight: .regular,
          title: "Headline", subtitle: "Regular / 20px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_subheadline_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .subheadline, weight: .none,
          title: "Subheadline", subtitle: "Default weight (Regular) / 18px"
        )

        TypographyInfoView(
          font: .subheadline, weight: .bold,
          title: "Subheadline", subtitle: "Bold / 18px"
        )

        TypographyInfoView(
          font: .subheadline, weight: .semiBold,
          title: "Subheadline", subtitle: "Semi-Bold / 18px"
        )

        TypographyInfoView(
          font: .subheadline, weight: .medium,
          title: "Subheadline", subtitle: "Medium / 18px"
        )

        TypographyInfoView(
          font: .subheadline, weight: .regular,
          title: "Subheadline", subtitle: "Regular / 18px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_body_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .body, weight: .none,
          title: "Body", subtitle: "Default weight (Regular) / 18px"
        )

        TypographyInfoView(
          font: .body, weight: .bold,
          title: "Body", subtitle: "Bold / 18px"
        )

        TypographyInfoView(
          font: .body, weight: .semiBold,
          title: "Body", subtitle: "Semi-Bold / 18px"
        )

        TypographyInfoView(
          font: .body, weight: .medium,
          title: "Body", subtitle: "Medium / 18px"
        )

        TypographyInfoView(
          font: .body, weight: .regular,
          title: "Body", subtitle: "Regular / 18px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_callout_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .callout, weight: .none,
          title: "Callout", subtitle: "Default weight (Regular) / 16px"
        )

        TypographyInfoView(
          font: .callout, weight: .bold,
          title: "Callout", subtitle: "Bold / 16px"
        )

        TypographyInfoView(
          font: .callout, weight: .semiBold,
          title: "Callout", subtitle: "Semi-Bold / 16px"
        )

        TypographyInfoView(
          font: .callout, weight: .medium,
          title: "Callout", subtitle: "Medium / 16px"
        )

        TypographyInfoView(
          font: .callout, weight: .regular,
          title: "Callout", subtitle: "Regular / 16px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_footnote_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .footnote, weight: .none,
          title: "Footnote", subtitle: "Default weight (Regular) / 14px"
        )

        TypographyInfoView(
          font: .footnote, weight: .bold,
          title: "Footnote", subtitle: "Bold / 14px"
        )

        TypographyInfoView(
          font: .footnote, weight: .semiBold,
          title: "Footnote", subtitle: "Semi-Bold / 14px"
        )

        TypographyInfoView(
          font: .footnote, weight: .medium,
          title: "Footnote", subtitle: "Medium / 14px"
        )

        TypographyInfoView(
          font: .footnote, weight: .regular,
          title: "Footnote", subtitle: "Regular / 14px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_caption_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .caption, weight: .none,
          title: "Caption", subtitle: "Default weight (Regular) / 12px"
        )

        TypographyInfoView(
          font: .caption, weight: .bold,
          title: "Caption", subtitle: "Bold / 12px"
        )

        TypographyInfoView(
          font: .caption, weight: .semiBold,
          title: "Caption", subtitle: "Semi-Bold / 12px"
        )

        TypographyInfoView(
          font: .caption, weight: .medium,
          title: "Caption", subtitle: "Medium / 12px"
        )

        TypographyInfoView(
          font: .caption, weight: .regular,
          title: "Caption", subtitle: "Regular / 12px"
        )
      }
    }

    assertSnapshot(result)
  }

  func testTypography_caption2_snapshotIsEqualToExpected() {
    var result: some View {
      VStack(alignment: .leading) {
        TypographyInfoView(
          font: .caption2, weight: .none,
          title: "Caption 2", subtitle: "Default weight (Regular) / 12px"
        )

        TypographyInfoView(
          font: .caption2, weight: .bold,
          title: "Caption 2", subtitle: "Bold / 12px"
        )

        TypographyInfoView(
          font: .caption2, weight: .semiBold,
          title: "Caption 2", subtitle: "Semi-Bold / 12px"
        )

        TypographyInfoView(
          font: .caption2, weight: .medium,
          title: "Caption 2", subtitle: "Medium / 12px"
        )

        TypographyInfoView(
          font: .caption2, weight: .regular,
          title: "Caption 2", subtitle: "Regular / 12px"
        )
      }
    }

    assertSnapshot(result)
  }
}
