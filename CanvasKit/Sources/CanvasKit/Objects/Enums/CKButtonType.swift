//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Define the configuration options for a button.
public enum CKButtonType {

  /// Specifies the main attributes for configuring a button.
  public enum Attribute {
    case main(
      title: String,
      option: DefaultOption = .primary,
      style: Style = .filled,
      variant: Variant = .default,
      isLoading: Binding<Bool> = .constant(false)
    )
    case icon(
      _ icon: CKIconAsset,
      option: IconOption,
      dimension: CGFloat
    )
    case socialLogin(
      option: SocialLoginOption,
      type: SocialLoginOption.ButtonType = .default
    )
  }

  /// Defines the default styling options for a button.
  public enum DefaultOption {
    case primary
    case secondary
  }

  /// Specifies the available icon options for a button.
  public enum IconOption {
    case primary
    case secondary
    case tertiary
  }

  /// Describes the style variations available for a button.
  public enum Style {
    case rounded
    case filled
  }

  /// Represents variant configurations for a button.
  public enum Variant {
    case icon(
      leading: CKIconAsset? = .none,
      trailing: CKIconAsset? = .none
    )
    case `default`
  }

  /// Describes the state options for a button.
  public enum State {
    case active
    case disabled
    case `default`
  }

  /// Specifies the color scheme options for a button.
  public enum ColorScheme {
    case `default`
    case light
    case dark
  }

  /// Defines the social login options available for a button.
  public enum SocialLoginOption {
    case facebook
    case google
    case apple

    /// Provides the title for the social login option.
    var title: String {
      switch self {
      case .facebook: "Continue with Facebook"
      case .google: "Continue with Google"
      case .apple: "Continue with Apple"
      }
    }

    /// Provides the icon asset for the social login option.
    var icon: CKIconAsset {
      switch self {
      case .facebook: .facebookLogin
      case .google: .googleLogin
      case .apple: .appleLogin
      }
    }

    /// Specifies the button types available for social login.
    public enum ButtonType {
      case icon
      case `default`
    }
  }
}
