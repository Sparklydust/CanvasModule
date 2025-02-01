//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Showcase the different typography styles used in the application.
struct TypographiesView: View {

  var body: some View {
    List {
      SecondarySection("Large Title") { largeTitleTypography }

      SecondarySection("Title") { TitleTypography }

      SecondarySection("Title 2") { Title2Typography }

      SecondarySection("Title 3") { Title3Typography }

      SecondarySection("Headline") { headlineTypography }

      SecondarySection("Subheadline") { subheadlineTypography }

      SecondarySection("Body") { bodyTypography }

      SecondarySection("Callout") { calloutTypography }

      SecondarySection("Footnote") { footnoteTypography }

      SecondarySection("Caption") { captionTypography }

      SecondarySection("Caption 2") { caption2Typography }
    }
    .listStyle(.plain)
    .cpSecondaryNavigationStack(title: "Typographies")
  }
}

extension TypographiesView {

  // MARK: - Large Title
  private var largeTitleTypography: some View {
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

  // MARK: - Title
  private var TitleTypography: some View {
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

  // MARK: - Title 2
  private var Title2Typography: some View {
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

  // MARK: - Title 3
  private var Title3Typography: some View {
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

  // MARK: - Headline
  private var headlineTypography: some View {
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

  // MARK: - Subheadline
  private var subheadlineTypography: some View {
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

  // MARK: - Body
  private var bodyTypography: some View {
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

  // MARK: - Callout
  private var calloutTypography: some View {
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

  // MARK: - Footnote
  private var footnoteTypography: some View {
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

  // MARK: - Caption
  private var captionTypography: some View {
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

  // MARK: - Caption 2
  private var caption2Typography: some View {
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
}

#Preview {
  TypographiesView()
}
