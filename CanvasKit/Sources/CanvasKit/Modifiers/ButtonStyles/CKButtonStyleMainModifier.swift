//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Applies the main button style to ``CKButtonMain``.
  /// - Parameters:
  ///   - option: The main option defining the button's primary or secondary type.
  ///   - style: The style of the button (e.g., filled, rounded).
  ///   - variant: The variant defining icon placement.
  ///   - isLoading: A binding to track the button's loading state.
  /// - Returns: A modified view with the applied button style.
  func ckButtonStyleMain(
    option: CKButtonType.MainOption,
    style: CKButtonType.Style,
    variant: CKButtonType.Variant,
    isLoading: Binding<Bool>
  ) -> some View {
    buttonStyle(
      CKButtonStyleMain(
        option: option,
        style: style,
        variant: variant,
        isLoading: isLoading
      )
    )
  }
}

/// Applies the main button style to ``CKButtonMain``.
private struct CKButtonStyleMain: ButtonStyle {

  @Environment(\.colorScheme) var colorScheme
  @Environment(\.isEnabled) private var isEnabled
  @State private var state: CKButtonType.State = .default

  let option: CKButtonType.MainOption
  let style: CKButtonType.Style
  let variant: CKButtonType.Variant
  @Binding var isLoading: Bool

  /// Creates a new instance of ``CKButtonStyleMain``.
  /// - Parameters:
  ///   - option: The main option defining the button type.
  ///   - style: The style of the button (e.g., filled, rounded).
  ///   - variant: The variant defining icon placement.
  ///   - isLoading: A binding tracking whether the button is in a loading state.
  init(
    option: CKButtonType.MainOption,
    style: CKButtonType.Style,
    variant: CKButtonType.Variant = .default,
    isLoading: Binding<Bool>
  ) {
    self.option = option
    self.style = style
    self.variant = variant
    _isLoading = isLoading
  }


  /// Builds the button's body with dynamic styling.
  /// - Parameter configuration: The button's current configuration.
  /// - Returns: A styled SwiftUI view representing the button.
  func makeBody(configuration: Configuration) -> some View {
    HStack(spacing: .zero) {
      Spacer()
      content(for: configuration)
      Spacer()
    }
    .ckPadding(.vertical, .x18)
    .foregroundStyle(foregroundColor)
    .background(configuration.isPressed ? onPressBackgroundColor : backgroundColor)
    .cornerRadius(style == .filled ? CKSpacing.x16.value : 200)
    .overlay { CKSpinner() }
    .onChange(of: isEnabled) { updateState(isEnabled: $1, isPressed: configuration.isPressed) }
    .onAppear { updateState(isEnabled: isEnabled, isPressed: configuration.isPressed) }
  }

  @ViewBuilder
  func content(for configuration: Configuration) -> some View {
    if case let .icon(leading, _) = variant, let leadingIcon = leading {
      CKIcon(leadingIcon, style: .regular, color: foregroundColor, size: .custom(20))
    }

    configuration.label
      .ckFont(.headline, weight: .bold)
      .ckPadding(.horizontal, .x16)

    if case let .icon(_, trailing) = variant, let trailingIcon = trailing {
      CKIcon(trailingIcon, style: .regular, color: foregroundColor, size: .custom(20))
    }
  }
}

private extension CKButtonStyleMain {

  /// Determines the background color of the button.
  var backgroundColor: Color {
    guard !isLoading else { return .ckDisabledButton }

    switch (option, state, colorScheme) {
    case (.primary, .active, _), (.primary, .default, _): return .ckPrimary900
    case (.primary, .disabled, _): return .ckDisabledButton
    case (.secondary, .disabled, _): return .ckDisabledButton
    case (.secondary, .active, .light), (.secondary, .default, .light): return .ckPrimary50
    case (.secondary, .active, .dark), (.secondary, .default, .dark): return .ckDark4
    @unknown default: return .ckPrimary50
    }
  }

  /// Determines the background color of the button when pressed.
  var onPressBackgroundColor: Color {
    switch (option, state, colorScheme) {
    case (.primary, .active, _), (.primary, .default, _): .ckPrimary800
    case (.primary, .disabled, _): .ckDisabledButton
    case (.secondary, .disabled, _): .ckDisabledButton
    case (.secondary, .active, .light), (.secondary, .default, .light): .ckPrimary100
    case (.secondary, .active, .dark), (.secondary, .default, .dark): .ckDark3
    @unknown default: .ckPrimary100
    }
  }

  /// Determines the foreground (text and icon) color of the button.
  var foregroundColor: Color {
    guard !isLoading else { return .clear }

    switch (option, state, colorScheme) {
    case (.primary, _, _): return .ckWhite
    case (.secondary, .disabled, _): return .ckWhite
    case (.secondary, .active, .dark), (.secondary, .default, .dark): return .ckWhite
    case (.secondary, .active, .light), (.secondary, .default, .light): return .ckPrimary900
    @unknown default: return .ckPrimary900
    }
  }

  /// Updates the button's state based on the passed parameters.
  /// - Parameters:
  ///   - isEnabled: Indicates whether the button is enabled.
  ///   - isPressed: Indicates whether the button is currently pressed.
  func updateState(
    isEnabled: Bool,
    isPressed: Bool
  ) {
    switch (isEnabled, isPressed) {
    case (true, true): state = .active
    case (true, false): state = .default
    case (false, _): state = .disabled
    }
  }
}
