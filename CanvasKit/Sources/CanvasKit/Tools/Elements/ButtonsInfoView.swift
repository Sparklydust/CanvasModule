//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays a button with its associated type as title.
public struct ButtonsInfoView<Content: View>: View {

  let title: String
  @ViewBuilder let button: () -> Content
  
  /// Initialize an instance of ``ButtonsInfoView``.
  /// - Parameters:
  ///   - title: The title displayed to showcase the type of the button.
  ///   - button: A closure that provides the button view.
  public init(
    title: String,
    button: @escaping () -> Content
  ) {
    self.title = title
    self.button = button
  }

  public var body: some View {
    VStack {
      button()

      Text(title)
        .ckFont(.callout)
        .minimumScaleFactor(0.5)
    }
    .padding()
  }
}

#Preview {
  ButtonsInfoView(title: "main") {
    CKButtonMain(
      title: "Continue",
      option: .primary,
      variant: .default,
      isLoading: .constant(false),
      action: {}
    )
  }
}
