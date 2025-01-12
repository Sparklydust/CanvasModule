//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

extension CGSize {

  /// Represents the standard size of a phone frame.
  static let phone = CGSize(width: 393, height: 852)

  /// Creates a phone frame size with a custom height.
  /// - Parameter height: The custom height for the phone frame.
  /// - Returns: A ``CGSize`` object with the standard width and custom height.
  static func phoneWithCustomHeight(_ height: CGFloat) -> CGSize {
    CGSize(width: 393, height: height)
  }

  /// Creates a custom frame size with specified width and height.
  /// - Parameters:
  ///   - width: The custom width for the frame.
  ///   - height: The custom height for the frame.
  /// - Returns: A ``CGSize`` object with the specified width and height.
  static func custom(_ width: CGFloat, _ height: CGFloat) -> CGSize {
    CGSize(width: width, height: height)
  }
}
