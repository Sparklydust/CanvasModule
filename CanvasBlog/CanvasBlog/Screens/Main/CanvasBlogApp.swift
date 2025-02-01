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
      GeometryReader { proxy in
        ZStack {
          Color.clear // Expand geometry reader to define `screenSize`.

          ContentView()
            .environment(\.orientation, UIDevice.current.orientation)
            .environment(\.screenSize, proxy.size)
            .onAppear { theme.load() }
        }
      }
    }
  }
}
