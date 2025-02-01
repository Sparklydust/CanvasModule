//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import UIKit

/// Responsible for managing and applying the app's theme.
@MainActor struct ThemeService {
  static let shared = ThemeService()

  /// Sets the application's theme and updates the interface.
  /// - Parameter type: The selected ``ThemeType``.
  func setTheme(_ type: ThemeType) {
    UserDefaults.standard.set(type.rawValue, forKey: ThemeType.key)
    load()
  }

  /// Loads the saved theme and applies it if any, else system one is used.
  func load() {
    guard let value = UserDefaults.standard.object(forKey: ThemeType.key) as? String,
          let appTheme = ThemeType(rawValue: value) else {
      changeTheme(to: .system)
      return
    }
    changeTheme(to: appTheme)
  }

  /// Updates the application's interface style based on the provided theme.
  /// - Parameter type: The ``ThemeType`` to apply.
  private func changeTheme(to type: ThemeType) {
    let selectedTheme: UIUserInterfaceStyle = switch type {
    case .system: .unspecified
    case .light: .light
    case .dark: .dark
    }

    (UIApplication.shared.connectedScenes.first as? UIWindowScene)?
      .windows
      .first?
      .overrideUserInterfaceStyle = selectedTheme
  }
}
