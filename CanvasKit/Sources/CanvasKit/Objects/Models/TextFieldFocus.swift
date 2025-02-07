//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

/// Represents the focus state of a text field.
public struct TextFieldFocus: Equatable {

  /// The unique identifier of the focused text field.
  let id: Int

  /// Initializes a new focus state with an identifier.
  /// - Parameter id: The unique identifier for the text field focus.
  init(id: Int) {
    self.id = id
  }

  /// Returns the next focus state by incrementing the identifier.
  func next() -> TextFieldFocus {
    TextFieldFocus(id: id + 1)
  }
}
