//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// A spinner view that indicates data is being loaded.
struct CKSpinner: View {

  var body: some View {
    ProgressView()
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  CKSpinner()
}
