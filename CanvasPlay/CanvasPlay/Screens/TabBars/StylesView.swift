//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Showcase all available styles from the ``CanvasKit`` design system.
struct StylesView: View {

  var body: some View {
    List {
      PrimarySection("Colors") { ColorsView() }

      PrimarySection("Iconographies") { IconographiesView() }

      PrimarySection("Spacings") { SpacingsView() }

      PrimarySection("Typographies") { TypographiesView() }
    }
    .cpPrimaryNavigationStack(title: "Styles")
  }
}

#Preview {
  StylesView()
}
