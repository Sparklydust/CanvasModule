//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Applies a conditional transformation to a view.
  ///
  /// This method conditionally applies a transformation to the view based on a boolean condition.
  /// If the condition is `true`, the transformation is applied otherwise, the original view is returned
  /// unchanged.
  /// - Parameters:
  ///   - condition: A boolean value that determines whether the transformation is applied.
  ///   - transform: A closure that takes the original view as input and returns the transformed view.
  /// - Returns: The transformed view if the condition is `true`; otherwise, the original view.
  @ViewBuilder func `if`<Content: View>(
    _ condition: Bool,
    transform: (Self) -> Content
  ) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
}
