//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Displays all available icons from the design system defined in ``CanvasKit``.
struct IconographyView: View {

  private let columns = [GridItem(.adaptive(minimum: 50))]

  var body: some View {
    List {
      SecondarySection("Regular") { regularIcons }
      SecondarySection("Bold") { boldIcons }
      SecondarySection("Brands") { brandsIcons }
    }
    .listStyle(.plain)
    .cpSecondaryNavigationStack(title: "Iconography")
  }
}

extension IconographyView {

  // MARK: - Regular Icons
  private var regularIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { $0.isStylable }, id: \.self) { asset in
        IconographyInfoView(asset, style: .regular)
      }
    }
  }

  // MARK: - Bold Icons
  private var boldIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { $0.isStylable }, id: \.self) { asset in
        IconographyInfoView(asset, style: .filled)
      }
    }
  }

  // MARK: - Brand Icons
  private var brandsIcons: some View {
    LazyVGrid(columns: columns, spacing: 16) {
      ForEach(CKIconAsset.allCases.filter { !$0.isStylable }, id: \.self) { asset in
        IconographyInfoView(asset)
      }
    }
  }
}

#Preview {
  IconographyView()
}
