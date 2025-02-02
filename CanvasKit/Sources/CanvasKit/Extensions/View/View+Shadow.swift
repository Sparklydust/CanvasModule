//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension View {

  /// Applies a predefined shadow style to the view.
  ///
  /// This modifier applies a ``CKShadowModifier`` using the specified ``CanvasShadowType``,
  /// allowing for consistent shadow styling across the app.
  /// - Parameter type: The ``CanvasShadowType`` defining the shadow's appearance.
  /// - Returns: A view modified with the specified shadow style.
  func ckShadow(_ type: CanvasShadowType) -> some View {
    modifier(CKShadowModifier(type: type))
  }
}

/// Applies a predefined shadow style to the view.
private struct CKShadowModifier: ViewModifier {

  /// The shadow style to apply.
  let type: CanvasShadowType

  func body(content: Content) -> some View {
    content
      .background {
        RoundedRectangle(cornerRadius: 36)
          .fill(.ckBrown)
          .shadow(
            color: type.color.opacity(type.opacity),
            radius: type.radius,
            x: type.offset.x,
            y: type.offset.y
          )
      }
  }
}
