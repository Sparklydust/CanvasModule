//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Showcase all available elements from the ``CanvasKit`` design system.
struct ElementsView: View {

  var body: some View {
    List {
      PrimarySection("Buttons") { ButtonsView() }

      PrimarySection("Text Fields") { TextFieldsView() }
    }
    .cpPrimaryNavigationStack(title: "Elements")
  }
}

#Preview {
  ElementsView()
}
