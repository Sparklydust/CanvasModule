//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Displays a spacing with its corresponding length.
///
/// Used to showcase available spacing in the design system.
public struct SpacerInfoView: View {

  let spacing: CKSpacing

  public init(spacing: CKSpacing) {
    self.spacing = spacing
  }

  public var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Rectangle()
        .fill(.ckGreyscale600)
        .frame(width: spacing.value, height: spacing.value)
        .padding(.leading, 2)

      Text("\(Int(spacing.value)) \(spacing != .none ? "points" : "point")")
    }
    .padding(8)
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  SpacerInfoView(spacing: .x10)
}
