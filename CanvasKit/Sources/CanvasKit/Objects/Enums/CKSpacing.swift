//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Define spacing values for a SwiftUI view.
public enum CKSpacing: String, CaseIterable {

  case none, x2, x4, x6, x8, x10, x12, x14, x16, x18, x20, x24, x28, x32, x64, x128, x256

  /// The spacing value to apply to a view.
  public var value: CGFloat {
    switch self {
    case .none: 0
    case .x2: 2
    case .x4: 4
    case .x6: 6
    case .x8: 8
    case .x10: 10
    case .x12: 12
    case .x14: 14
    case .x16: 16
    case .x18: 18
    case .x20: 20
    case .x24: 24
    case .x28: 28
    case .x32: 32
    case .x64: 64
    case .x128: 128
    case .x256: 256
    }
  }
}
