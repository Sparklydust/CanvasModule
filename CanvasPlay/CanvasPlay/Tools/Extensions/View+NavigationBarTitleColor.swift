//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Sets the text color for a navigation bar title.
  /// - Parameter color: The color to be set on the navigation bar title.
  func navigationBarTitleTextColor(_ color: Color) -> some View {

    let uiColor = UIColor(color)

    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor ]
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor ]

    return self
  }
}
