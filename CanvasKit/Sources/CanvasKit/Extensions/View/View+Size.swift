//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

public extension View {

  /// Measures the size of the view and updates the specified binding with the size.
  /// Example:
  /// ```swift
  /// @State private var viewSize: CGSize = .zero
  ///
  /// var body: some View {
  ///   Text("This Text view as a size.")
  ///    .measureSize($viewSize)
  /// }
  /// ```
  /// - Parameter size: Value where the size of the view will be stored.
  /// - Returns: A modified version of the view that measures its size.
  func measureSize(_ size: Binding<CGSize>) -> some View {
    modifier(MeasureSizeModifier(size: size))
  }

  /// Measures the size of the view and provides it through a completion closure.
  /// Example:
  /// ```swift
  /// @State private var viewSize: CGSize = .zero
  ///
  /// var body: some View {
  ///   Text("This Text view as a size.")
  ///    .measureSize { print("Text view size is: \($0).") }
  /// }
  /// ```
  /// - Parameter completion: A closure that will be called with the size of the view.
  /// - Returns: A modified version of the view that measures its size.
  func measureSize(_ completion: @escaping (CGSize) -> Void) -> some View {
    modifier(MeasureSizeModifier(size: .constant(.zero), completion: completion))
  }
}

/// Measures the size of the view and updates the specified binding with the size.
private struct MeasureSizeModifier: ViewModifier {

  /// Value where the size of the view will be stored.
  @Binding var size: CGSize
  /// A closure that will be called with the size of the view.
  var completion: ((CGSize) -> Void)?

  init(
    size: Binding<CGSize>,
    completion: ((CGSize) -> Void)? = .none
  ) {
    _size = size
    self.completion = completion
  }

  func body(content: Content) -> some View {
    content
      .background(
        GeometryReader { proxy in
          Color.clear
            .preference(key: SizePreferenceKey.self, value: proxy.size)
        }
      )
      .onPreferenceChange(SizePreferenceKey.self) { preferences in
        Task {
          await MainActor.run {
            self.size = preferences
            self.completion?(preferences)
          }
        }
      }
  }
}

/// A preference key for capturing a view's size using SwiftUI's preference system.
///
/// This key is used to pass a view's measured size from a GeometryReader to other
/// views or modifiers. The default value is set to `.zero` and no value reduction is
/// performed, as only a single size is expected.
private struct SizePreferenceKey: PreferenceKey {

  /// The default size value.
  static let defaultValue: CGSize = .zero

  /// Combines multiple values into one. Since only one value is expected, this implementation does
  /// not modify the current value.
  /// - Parameters:
  ///   - value: The current accumulated size.
  ///   - nextValue: A closure that provides the next size value.
  static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
    // Intentionally empty: Only a single value is expected, no accumulation is needed.
  }
}
