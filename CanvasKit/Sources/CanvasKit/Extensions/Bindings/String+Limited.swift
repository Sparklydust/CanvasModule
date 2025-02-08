//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension Binding<String> {

  /// Limits the maximum length of the string on which it is used to.
  /// - Parameter length: The maximum number of characters allowed.
  /// - Returns: A ``Binding<String>`` that ensures the text does not exceed the specified length.
  func limited(to length: Int) -> Binding<String> {
    Binding<String>(
      get: { String(wrappedValue.prefix(length)) },
      set: { wrappedValue = String($0.prefix(length)) }
    )
  }
}
