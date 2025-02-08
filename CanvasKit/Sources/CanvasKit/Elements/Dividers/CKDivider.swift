//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A customizable divider that adapts to the color scheme and orientation.
public struct CKDivider: View {

  @Environment(\.colorScheme) var colorScheme

  public enum Axes {
    case horizontal
    case vertical
  }

  let axes: Axes
  let color: Color?

  /// Initializes a divider with the specified orientation and optional color.
   /// - Parameters:
   ///   - axes: The orientation of the divider, either horizontal or vertical. Defaults to horizontal.
   ///   - color: An optional custom color for the divider. If `nil`, it adapts to the color scheme.
  public init(
    axes: Axes = .horizontal,
    color: Color? = .none
  ) {
    self.color = color
    self.axes = axes
  }

  public var body: some View {
    RoundedRectangle(cornerRadius: 2)
      .fill(color ?? (colorScheme == .dark ? .ckDark4 : .ckGreyscale200))
      .frame(
        width: axes == .vertical ? 1 : nil,
        height: axes == .horizontal ? 1 : nil
      )
  }
}

#Preview {
  CKDivider()
}
