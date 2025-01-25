//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Showcase the main ``CanvasKit`` design system view elements.
struct ContentView: View {

  var body: some View {
    TabView {
      Tab("Styles", systemImage: "paintpalette") {
        StylesView()
      }
    }
  }
}

#Preview {
  ContentView()
}
