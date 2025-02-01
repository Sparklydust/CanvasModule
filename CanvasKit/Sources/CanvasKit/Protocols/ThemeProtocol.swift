//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

public protocol ThemeProtocol: Sendable {

  /// Sets the application's theme and updates the interface.
  /// - Parameter type: The selected ``ThemeType``.
  @MainActor func set(to type: ThemeType)

  /// Loads the saved theme and applies it if any, else system one is used.
  @MainActor func load()
}
