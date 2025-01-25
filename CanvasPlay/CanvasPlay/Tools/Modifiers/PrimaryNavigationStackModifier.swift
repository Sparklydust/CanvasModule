//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// CanvasPlay primary ``NavigationStack`` to showcase main items.
  /// - Parameter title: The title to be displayed in the navigation bar.
  /// - Returns: A view wrapped in a navigation stack.
  func cpPrimaryNavigationStack(title: String) -> some View {
    modifier(CPNavigationStackModifier(title: title))
  }
}

/// CanvasPlay primary ``NavigationStack`` to showcase main items.
private struct CPNavigationStackModifier: ViewModifier {

  /// The title to be displayed in the navigation bar.
  let title: String

  func body(content: Content) -> some View {
    NavigationStack {
      content
        .listStyle(.insetGrouped)
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.large)
        .navigationBarTitleTextColor(.accent)
    }
  }
}
