//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation

/// Represents different types of navigation bar configurations.
public enum CKNavBarType {

  /// A navigation bar for articles with save and publish actions.
  /// - Parameters:
  ///   - save: A closure executed when saving the article.
  ///   - publish: A closure executed when publishing the article.
  case article(save: () -> Void, publish: () -> Void)
  /// A navigation bar with a close button.
  case close
  /// A default navigation bar with no specific actions.
  case `default`
  /// A navigation bar for the home screen.
  case home
  /// A loading navigation bar with a progress indicator.
  /// - Parameters:
  ///   - minValue: The minimum progress value.
  ///   - maxValue: The maximum progress value.
  case loading(minValue: CGFloat = 0, maxValue: CGFloat = 100)
  /// A search navigation bar with customization options.
  /// - Parameters:
  ///   - isModalPresentation: Indicates whether the search is presented modally.
  ///   - type: The type of search navigation bar.
  ///   - focused: A closure triggered when the search field is focused.
  case search(isModalPresentation: Bool = false, type: CKSearchNavBarType, focused: (Bool) -> Void)
}

// MARK: - Identifiable
extension CKNavBarType: Identifiable {

  /// A unique identifier for each navigation bar type.
  public var id: String {
    switch self {
    case .article: return "article"
    case .close: return "close"
    case .default: return "default"
    case .home: return "home"
    case .loading(let min, let max): return "loading-\(min)-\(max)"
    case .search(let isModal, let type, _): return "search-\(isModal)-\(type)"
    }
  }
}

// MARK: - Equatable
extension CKNavBarType: Equatable {

  /// Compares two navigation bar types for equality based on their identifiers.
  public static func == (
    lhs: CKNavBarType,
    rhs: CKNavBarType
  ) -> Bool {
    lhs.id == rhs.id
  }
}
