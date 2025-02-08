//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A customizable divider that adapts to the color scheme and orientation.
public struct CKDivider: View {

  @Environment(\.colorScheme) var colorScheme

  public enum Axis {
    case horizontal
    case vertical
  }

  let axis: Axis
  let color: Color?

  /// Initializes a divider with the specified orientation and optional color.
   /// - Parameters:
   ///   - axis: The orientation of the divider, either horizontal or vertical. Defaults to horizontal.
   ///   - color: An optional custom color for the divider. If `nil`, it adapts to the color scheme.
  public init(
    axis: Axis = .horizontal,
    color: Color? = .none
  ) {
    self.color = color
    self.axis = axis
  }

  public var body: some View {
    RoundedRectangle(cornerRadius: 2)
      .fill(color ?? (colorScheme == .dark ? .ckDark4 : .ckGreyscale200))
      .frame(
        width: axis == .vertical ? 1 : .none,
        height: axis == .horizontal ? 1 : .none
      )
  }
}

#Preview {
  CKDivider()
}
