//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

struct ContainerTestView<Content: View>: View {

  @Environment(\.colorScheme) var colorScheme
  let content: Content

  init(@ViewBuilder content: @escaping () -> Content) {
    self.content = content()
  }

  var body: some View {
    VStack {
      content
    }
    .padding()
    //.canvasStandardBackground()
  }
}
