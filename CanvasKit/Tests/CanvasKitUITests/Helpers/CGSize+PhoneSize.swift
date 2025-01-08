//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

extension CGSize {

  static let phone = CGSize(width: 393, height: 852)

  static func phoneWithCustomHeight(_ height: CGFloat) -> CGSize {
    CGSize(width: 393, height: height)
  }

  static func custom(_ width: CGFloat, _ height: CGFloat) -> CGSize {
    CGSize(width: width, height: height)
  }
}
