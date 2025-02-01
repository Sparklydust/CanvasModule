//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension EnvironmentValues {

  /// Represents the screen size of the used device.
  var screenSize: CGSize {
    get { self[ScreenSizeKey.self] }
    set { self[ScreenSizeKey.self] = newValue }
  }
}

/// Defines a custom ``EnvironmentKey`` for storing screen size.
private struct ScreenSizeKey: EnvironmentKey {

  /// Provides a default value of ``CGSize.zero`` for the screen size, used when no explicit size
  /// is set in the environment.
  static let defaultValue: CGSize = .zero
}
