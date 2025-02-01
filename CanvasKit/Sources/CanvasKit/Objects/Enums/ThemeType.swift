//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

/// Represents the available themes for the application.
public enum ThemeType: String {

  /// Key used for saving the selected theme in ``UserDefaults``.
  static let key = "CanvasKitTheme"

  case system
  case light
  case dark
}
