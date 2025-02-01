//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Showcase all available styles from the ``CanvasKit`` design system.
struct StylesView: View {

  @State private var showColors = false

  var body: some View {
    List {
      PrimarySection("Colors") { ColorsView() }

      PrimarySection("Typographies") { TypographiesView() }

      PrimarySection("Iconographies") { IconographiesView() }

      PrimarySection("Spacings") { SpacingsView() }
    }
    .cpPrimaryNavigationStack(title: "Styles")
  }
}

#Preview {
  StylesView()
}
