//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A section view that presents a button to trigger a popover with
/// primary ``CanvasKit`` items.
///
/// - Parameters:
///   - title: The title of the button displayed in the section.
///   - content: A closure returning the view to display inside the popover.
struct PrimarySection: View {

  @State private var triggerPopover = false

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
      Button(action: { triggerPopover = true }) {
        Text(title)
      }
      .foregroundStyle(.primary)
      .popover(isPresented: $triggerPopover) {
        AnyView(content())
      }
    }
  }
}

#Preview {
  List {
    PrimarySection("Colors") { ColorsView() }
  }
}
