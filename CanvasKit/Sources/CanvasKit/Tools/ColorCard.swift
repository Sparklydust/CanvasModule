//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension View {

  /// Styles the ``CanvasKit`` colors with the ``ColorsView`` as a color card.
  /// - Parameters:
  ///   - label: The text to display on the card.
  ///   - labelColor: The color of the label text. Default is white.
  /// - Returns: A styled card view.
  func colorCard(label: String, labelColor: Color = .white) -> some View {
    self
      .overlay(Text(label).foregroundColor(labelColor))
      .frame(height: 40)
      .cornerRadius(5)
  }
}
