//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension View {

  /// Adds an equal padding amount to specific edges of this view.
  ///
  /// Use this modifier to add a specified amount of padding to one or more edges of the view.
  /// ```swift
  ///  VStack {
  ///    Text("Text padded on the bottom and trailing edges.")
  ///      .ckPadding([.bottom, .trailing], .x12)
  ///  }
  /// ```
  /// - Parameters:
  ///   - edges: The set of edges to pad for this view. The default is `all`.
  ///   - length: An amount, given in ``CKSpacing``, to pad this view on the specified edges.
  ///   If you set the value to `nil`, SwiftUI uses a platform-specific default amount. The
  ///   default value of this parameter is `nil`.
  /// - Returns: A view that's padded by the specified amount on the specified edges.
  func ckPadding(
    _ edges: Edge.Set = .all,
    _ length: CKSpacing? = nil
  ) -> some View {
    modifier(CKPaddingModifier(type: .edgesAndLength(edges: edges, length: length)))
  }

  /// Adds a specific padding amount to each edge of the view on which it is attached to.
  ///
  /// Use this modifier to add padding all the way around a view.
  /// ```swift
  ///  VStack {
  ///    Text("Text padded on all edges.")
  ///      .ckPadding(.x12)
  ///  }
  /// ```
  /// - Parameter length: The amount, given in ``CKSpacing``, to pad this view on all edges.
  /// - Returns: A view that's padded by the amount you specify.
  func ckPadding(_ length: CKSpacing) -> some View {
    modifier(CKPaddingModifier(type: .length(length: length)))
  }
}

/// Adds an equal padding amount to specific edges of this view.
private struct CKPaddingModifier: ViewModifier {

  enum PaddingType {
    case edgesAndLength(edges: Edge.Set, length: CKSpacing?)
    case length(length: CKSpacing)
  }

  let type: PaddingType

  func body(content: Content) -> some View {
    switch type {
    case .edgesAndLength(let edges, let length):
      if let length {
        content.padding(edges, length.value)
      } else {
        content.padding(edges)
      }
    case .length(let length):
      content.padding(length.value)
    }
  }
}
