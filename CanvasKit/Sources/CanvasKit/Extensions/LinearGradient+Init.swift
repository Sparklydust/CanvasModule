//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension LinearGradient {

  /// Initializes a ``LinearGradient`` with a given gradient, using `.leading` as the start point and `.trailing`
  /// as the end point.
  /// - Parameter gradient: The gradient defining the colors and stops of the linear gradient.
  init(gradient: Gradient) {
    self.init(
      gradient: gradient,
      startPoint: .leading,
      endPoint: .trailing
    )
  }
}
