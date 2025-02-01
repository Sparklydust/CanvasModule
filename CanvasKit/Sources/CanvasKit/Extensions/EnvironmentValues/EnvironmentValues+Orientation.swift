//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension EnvironmentValues {

  /// A property to access the current device orientation.
  var orientation: UIDeviceOrientation {
    get { self[OrientationKey.self] }
    set { self[OrientationKey.self] = newValue }
  }
}

/// Defines a custom ``EnvironmentKey`` for storing the device orientation.
private struct OrientationKey: EnvironmentKey {

  /// The default orientation value, which is the current device orientation at the time of access.
  static let defaultValue: UIDeviceOrientation = .unknown
}
