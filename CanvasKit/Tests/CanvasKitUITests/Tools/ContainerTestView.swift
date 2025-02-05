//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A container view for snapshot testing, providing consistent padding and background.
struct ContainerTestView<Content: View>: View {

  /// The content to be displayed inside the container.
  let content: Content

  /// Initializes the container with a view builder.
  /// - Parameter content: A closure that defines the content of the container.
  init(@ViewBuilder content: @escaping () -> Content) {
    self.content = content()
  }

  var body: some View {
    content
      .padding()
  }
}
