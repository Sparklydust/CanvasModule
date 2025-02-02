//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

extension View {

  /// Defining the styling for an icon-based button.
  /// - Parameters:
  ///   - asset: The icon asset to display within the button.
  ///   - option: The button's icon option defining its styling.
  ///   - size: The size of the button.
  /// - Returns: A view modified with the specified icon button style.
  func ckButtonStyleIcon(
    asset: CKIconAsset,
    option: CKButtonType.IconOption,
    size: CGFloat
  ) -> some View {
    buttonStyle(
      CKButtonStyleIconModifier(
        asset: asset,
        option: option,
        size: size
      )
    )
  }
}

/// Defining the styling for an icon-based button.
private struct CKButtonStyleIconModifier: ButtonStyle {

  @Environment(\.colorScheme) var colorScheme

  let asset: CKIconAsset
  let option: CKButtonType.IconOption
  let size: CGFloat

  /// Creates an instance of ``CKButtonStyleIconModifier``.
  /// - Parameters:
  ///   - asset: The icon asset to display.
  ///   - option: The button's styling option.
  ///   - size: The size of the button.
  init(
    asset: CKIconAsset,
    option: CKButtonType.IconOption,
    size: CGFloat
  ) {
    self.asset = asset
    self.option = option
    self.size = size
  }

  /// Determines the background color of the button.
  var backgroundColor: Color {
    switch (option, colorScheme) {
    case (.primary, _): .ckPrimary900
    case (.secondary, .light): .ckWhite
    case (.secondary, .dark): .ckDark2
    case (.tertiary, _): .ckPrimary900
    @unknown default: .ckPrimary900
    }
  }

  /// Determines the background color of the button when pressed.
  var onPressBackgroundColor: Color {
    switch (option, colorScheme) {
    case (.primary, _): .ckPrimary800
    case (.secondary, .light): .ckPrimary50
    case (.secondary, .dark): .ckDark3
    case (.tertiary, _): .ckPrimary800
    @unknown default: .ckPrimary800
    }
  }

  /// Determines the foreground color of the button icon.
  var foregroundColor: Color {
    switch (option, colorScheme) {
    case (.primary, _): .ckWhite
    case (.secondary, .light): .ckPrimary900
    case (.secondary, .dark): .ckWhite
    case (.tertiary, _): .ckWhite
    @unknown default: .ckWhite
    }
  }

  /// Defines the button's corner radius based on its style.
  var cornerRadius: CGFloat {
    switch option {
    case .primary: size / 2
    case .secondary, .tertiary: CKSpacing.x6.value
    }
  }

  /// Determines whether to add a border around the button.
  var addBorderColor: Bool {
    switch (option, colorScheme) {
    case (.secondary, .light): true
    default: false
    }
  }

  /// Determines whether to apply a shadow to the button.
  var addShadow: Bool {
    switch option {
    case .primary, .tertiary: true
    default: false
    }
  }

  /// Builds the button's UI based on its configuration.
  /// - Parameter configuration: The button's interaction state.
  /// - Returns: A styled SwiftUI view representing the button.
  func makeBody(configuration: Configuration) -> some View {
    CKIcon(
      asset,
      style: option == .secondary ? .filled : .regular,
      color: foregroundColor,
      size: .custom(size * 0.6)
    )
    .padding(size * 0.4)
    .background(configuration.isPressed ? onPressBackgroundColor : backgroundColor)
    .frame(width: size, height: size)
    .cornerRadius(cornerRadius)
    .overlay(
      RoundedRectangle(cornerRadius: cornerRadius)
        .stroke(.ckGreyscale300, lineWidth: addBorderColor ? 1 : 0)
    )
    .if(addShadow) { $0.ckShadow(.buttonShadow1) }
    .aspectRatio(1, contentMode: .fit)
  }
}
