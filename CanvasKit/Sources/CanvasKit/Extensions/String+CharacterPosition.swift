//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

extension String {

  /// Returns the character at the specified position as a ``String``.
  /// - Parameter position: The index of the character to retrieve.
  /// - Returns: A `String` containing the character at the given position,
  /// or `nil` if out of bounds.
  func character(at position: Int) -> String {
    guard position >= .zero, position < self.count else { return String() }
    let index = self.index(self.startIndex, offsetBy: position)
    return String(self[index])
  }
}
