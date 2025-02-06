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

  /// The icon asset to display.
  let asset: CKIconAsset
  /// The button's styling option.
  let option: CKButtonType.IconOption
  /// The size of the button.
  let size: CGFloat

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
        .stroke(
          .ckGreyscale300,
          lineWidth: option == .secondary && colorScheme == .light ? 1.4 : 0
        )
    )
    .if(option != .secondary) { $0.ckShadow(.buttonShadow1) }
    .aspectRatio(1, contentMode: .fit)
  }
}

// MARK: - Values
private extension CKButtonStyleIconModifier {

  /// Determines the background color of the button.
  var backgroundColor: Color {
    switch option {
    case .primary, .tertiary: .ckPrimary900
    case .secondary: colorScheme == .dark ? .ckDark2 : .ckWhite
    }
  }

  /// Determines the background color of the button when pressed.
  var onPressBackgroundColor: Color {
    switch option {
    case .primary, .tertiary: .ckPrimary800
    case .secondary: colorScheme == .dark ? .ckDark3 : .ckPrimary50
    }
  }

  /// Determines the foreground color of the button icon.
  var foregroundColor: Color {
    switch option {
    case .primary, .tertiary: .ckWhite
    case .secondary: colorScheme == .dark ? .ckWhite : .ckPrimary900
    }
  }

  /// Defines the button's corner radius based on its style.
  var cornerRadius: CGFloat {
    option == .primary ? size / 2 : CKSpacing.x6.value
  }
}
