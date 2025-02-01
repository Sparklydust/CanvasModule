//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import UIKit

/// Responsible for managing and applying the app's theme.
public struct ThemeService: ThemeProtocol {
  static let shared = ThemeService()
}

extension ThemeService {

  @MainActor public func set(to type: ThemeType) {
    UserDefaults.standard.set(type.rawValue, forKey: ThemeType.key)
    load()
  }

  @MainActor public func load() {
    guard let value = UserDefaults.standard.object(forKey: ThemeType.key) as? String,
          let appTheme = ThemeType(rawValue: value) else {
      changeTheme(to: .system)
      return
    }
    changeTheme(to: appTheme)
  }

  /// Updates the application's interface style based on the provided theme.
  /// - Parameter type: The ``ThemeType`` to apply.
  @MainActor private func changeTheme(to type: ThemeType) {
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
