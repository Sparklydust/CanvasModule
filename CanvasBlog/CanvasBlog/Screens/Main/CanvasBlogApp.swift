//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

@main
struct CanvasBlogApp: App {

  @Environment(\.theme) private var theme

  var body: some Scene {
    WindowGroup {
      ContentView()
        .onAppear { theme.load() }
    }
  }
}
