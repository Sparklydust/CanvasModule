//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Defines the different shadow styles used within the Canvas design system.
///
/// ``CanvasShadowType`` provides predefined shadow configurations for different UI components.
public enum CanvasShadowType {

  /// Shadow styles for card components.
  case cardShadow1, cardShadow2, cardShadow3

  /// Shadow styles for button components.
  case buttonShadow1, buttonShadow2, buttonShadow3

  /// The color of the shadow.
  var color: Color {
    switch self {
    case .cardShadow1, .cardShadow2, .cardShadow3:
      .ckShadowCard
    case .buttonShadow1, .buttonShadow2, .buttonShadow3:
      .ckPrimary900
    }
  }

  /// The opacity level of the shadow.
  var opacity: CGFloat {
    switch self {
    case .cardShadow1, .cardShadow3: 0.08
    case .cardShadow2: 0.05
    case .buttonShadow1: 0.25
    case .buttonShadow2, .buttonShadow3: 0.20
    }
  }

  /// The blur radius applied to the shadow.
  var radius: CGFloat {
    switch self {
    case .cardShadow1, .cardShadow2: 60
    case .cardShadow3: 100
    case .buttonShadow1: 24
    case .buttonShadow2, .buttonShadow3: 32
    }
  }

  /// The horizontal (`x`) and vertical (`y`) offset of the shadow.
  var offset: (x: CGFloat, y: CGFloat) {
    switch self {
    case .cardShadow1, .cardShadow2: (0, 4)
    case .cardShadow3: (0, 20)
    case .buttonShadow1: (4, 8)
    case .buttonShadow2: (4, 12)
    case .buttonShadow3: (4, 16)
    }
  }
}
