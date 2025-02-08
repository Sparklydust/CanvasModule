//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays a ``CanvasKit`` elements with its associated style as title.
public struct ElementInfoView<Content: View>: View {

  let title: String
  @ViewBuilder let element: () -> Content

  /// Initialize an instance of ``ElementInfoView``.
  /// - Parameters:
  ///   - title: The title displayed to showcase the element's type.
  ///   - element: A closure that provides the element view.
  public init(
    title: String,
    element: @escaping () -> Content
  ) {
    self.title = title
    self.element = element
  }

  public var body: some View {
    VStack {
      element()

      Text(title)
        .ckFont(.callout)
        .minimumScaleFactor(0.5)
    }
    .padding()
  }
}

#Preview {
  ElementInfoView(title: "main") {
    CKButtonMain(
      title: "Continue",
      option: .primary,
      variant: .default,
      isLoading: .constant(false),
      action: {}
    )
  }
}
