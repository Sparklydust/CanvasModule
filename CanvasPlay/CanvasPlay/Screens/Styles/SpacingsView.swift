//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Displays all available spacings from the design system defined in ``CanvasKit``.
struct SpacingsView: View {

  var body: some View {
    List {
      ForEach(CKSpacing.allCases, id: \.self) { space in
        SecondarySection(space.rawValue) { SpacerInfoView(spacing: space) }
      }
    }
    .listStyle(.plain)
    .cpSecondaryNavigationStack(title: "Spacings")
  }
}

#Preview {
  SpacingsView()
}
