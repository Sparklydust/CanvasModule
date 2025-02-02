//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Displays all available icons from the design system defined in ``CanvasKit``.
struct IconographiesView: View {

  private let columns = [GridItem(.adaptive(minimum: 50))]

  var body: some View {
    List {
      SecondarySection("Regular") { regularIcons }

      SecondarySection("Filled") { filledIcons }

      SecondarySection("Login") { loginIcons }

      SecondarySection("Others") { othersIcons }
    }
    .listStyle(.plain)
    .cpSecondaryNavigationStack(title: "Iconographies")
  }
}

extension IconographiesView {

  // MARK: - Regular Icons
  private var regularIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { $0.isStylable }, id: \.self) {
        IconographyInfoView($0, style: .regular)
      }
    }
  }

  // MARK: - Filled Icons
  private var filledIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { $0.isStylable }, id: \.self) {
        IconographyInfoView($0, style: .filled)
      }
    }
  }

  // MARK: - Login Icons
  private var loginIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { !$0.isStylable }, id: \.self) {
        if [.facebookLogin, .appleLogin, .googleLogin].contains($0) {
          IconographyInfoView($0, color: .none)
        }
      }
    }
  }

  // MARK: - Others Icons
  private var othersIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { !$0.isStylable }, id: \.self) {
        if ![.facebookLogin, .appleLogin, .googleLogin].contains($0) {
          IconographyInfoView($0, color: .none)
        }
      }
    }
  }
}

#Preview {
  IconographiesView()
}
