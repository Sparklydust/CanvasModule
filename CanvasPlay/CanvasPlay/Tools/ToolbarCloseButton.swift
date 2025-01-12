//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

extension View {

  /// Adds a toolbar close button to the view.
  ///
  /// The close button uses a dismiss action from the environment and is styled
  /// based on the current color scheme.
  /// - Returns: A view with a close button in the toolbar.
  func toolbarCloseButton() -> some View {
    modifier(ToolbarCloseButtonModifier())
  }
}

private struct ToolbarCloseButtonModifier: ViewModifier {

  @Environment(\.dismiss) var dismiss
  @Environment(\.colorScheme) var colorScheme

  func body(content: Content) -> some View {
    content
      .toolbar {
        Button(action: { dismiss() }) {
          Image(systemName: "xmark.circle")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundStyle(.ckGreyscale900)
        }
      }
  }
}
