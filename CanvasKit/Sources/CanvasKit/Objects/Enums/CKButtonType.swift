//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SwiftUI

/// Define the configuration options for a button.
public enum CKButtonType {

  /// Defines the default styling options for a button.
  public enum MainOption {
    case primary
    case secondary
  }

  /// Specifies the available icon options for a button.
  public enum IconOption {
    case primary
    case secondary
    case tertiary
  }

  /// Represents variant configurations for a button.
  public enum Variant {
    case `default`
    case icon(
      leading: CKIconAsset? = .none,
      trailing: CKIconAsset? = .none
    )
  }

  /// Describes the state options for a button.
  public enum State {
    case `default`
    case active
    case disabled
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
      case `default`
      case icon
    }
  }
}
