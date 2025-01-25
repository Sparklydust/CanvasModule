//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A section view that presents the ``CanvasKit`` design system items.
///
/// - Parameters:
///   - title: The title of the button displayed in the section.
///   - content: A closure returning the view to display inside the popover.
struct SecondarySection: View {

  /// The title of the button displayed in the section.
  let title: String
  ///  The view to display inside the popover.
  @ViewBuilder let content: () -> any View

  init(
    _ title: String,
    content: @escaping () -> any View
  ) {
    self.title = title
    self.content = content
  }

  var body: some View {
    Section {
      AnyView(content())
    } header: {
      Text(title)
        .foregroundStyle(.accent)
    }
  }
}

#Preview {
  List {
    SecondarySection("Primary 900") {
      Color(.ckPrimary900)
        .colorCard(label: "900")
    }
  }
}
