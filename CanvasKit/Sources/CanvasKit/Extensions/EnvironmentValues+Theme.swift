//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension EnvironmentValues {

  /// Provide access to the app's theme.
  ///
  /// Exposes a theme service conforming to ``ThemeProtocol``, allowing SwiftUI views
  /// to retrieve and update the current theme.
  @Entry var theme: ThemeProtocol = ThemeService.shared
}
