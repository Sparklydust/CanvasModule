//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

struct StylesView: View {

  @State private var showColors = false

  var body: some View {
    List {
      PrimarySection("Colors") { ColorsView() }

      PrimarySection("Typography") { TypographyView() }
    }
    .cpPrimaryNavigationStack(title: "Styles")
  }
}

#Preview {
  StylesView()
}
