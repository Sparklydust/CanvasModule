//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// CanvasPlay ``NavigationStack`` with a toolbar close button to the view to
  /// showcase CanvasKit elements.
  /// - Parameter title: The title to be displayed in the navigation bar.
  /// - Returns: A view wrapped in a navigation stack with a toolbar close button.
  func cpSecondaryNavigationStack(title: String) -> some View {
    modifier(CPNavigationStackModifier(title: title))
  }
}

/// CanvasPlay ``NavigationStack`` with a toolbar close button to the view to
/// showcase CanvasKit elements.
private struct CPNavigationStackModifier: ViewModifier {

  @Environment(\.dismiss) var dismiss

  /// The title to be displayed in the navigation bar.
  let title: String

  func body(content: Content) -> some View {
    NavigationStack {
      VStack {
        Divider()

        content
          .headerProminence(.increased)
      }
      .navigationBarTitleDisplayMode(.inline)
      .navigationTitle(title)
      .navigationBarTitleTextColor(.primary)
      .toolbar {
        Button(action: { dismiss() }) {
          Image(systemName: "xmark.circle")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundStyle(.accent)
        }
      }
    }
  }
}
