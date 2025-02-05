//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Displays a list of button examples.
struct ButtonsView: View {

  var body: some View {
    List {
      SecondarySection("Icon") { iconButtons }

      SecondarySection("Primary Button") { mainButtons}

      SecondarySection("Social Login - Default") { socialLoginsDefaultButtons }

      SecondarySection("Social Login - Icon") { socialLoginsIconButtons }
    }
    .listStyle(.plain)
    .cpSecondaryNavigationStack(title: "Buttons")
  }
}

extension ButtonsView {

  // MARK: - Icon Buttons
  var iconButtons: some View {
    HStack {
      Spacer()
      ButtonsInfoView(title: "primary") {
        CKButtonIcon(.addUser, option: .primary, size: 40, action: {})
      }

      Spacer()

      ButtonsInfoView(title: "secondary") {
        CKButtonIcon(.addUser, option: .secondary, size: 40, action: {})
      }

      Spacer()

      ButtonsInfoView(title: "tertiary") {
        CKButtonIcon(.addUser, option: .tertiary, size: 40, action: {})
      }
      Spacer()
    }
  }

  // MARK: - Main Buttons
  var mainButtons: some View {
    VStack {
      ButtonsInfoView(title: "option primary - default variant") {
        CKButtonMain(title: "Continue", action: {})
      }

      ButtonsInfoView(title: "option primary - icons variant") {
        CKButtonMain(
          title: "Continue",
          variant: .icon(leading: .addUser, trailing: .arrowRight),
          action: {}
        )
      }

      ButtonsInfoView(title: "option primary - leading icon variant") {
        CKButtonMain(
          title: "Continue",
          variant: .icon(leading: .addUser),
          action: {}
        )
      }

      ButtonsInfoView(title: "option primary - trailing icon variant") {
        CKButtonMain(
          title: "Continue",
          variant: .icon(trailing: .arrowRight),
          action: {}
        )
      }

      ButtonsInfoView(title: "option primary - disabled") {
        CKButtonMain(title: "Continue", action: {})
          .disabled(true)
      }

      ButtonsInfoView(title: "option secondary - default variant") {
        CKButtonMain(
          title: "Cancel",
          option: .secondary,
          action: {}
        )
      }

      ButtonsInfoView(title: "option secondary - icons variant") {
        CKButtonMain(
          title: "Cancel",
          option: .secondary,
          variant: .icon(leading: .addUser, trailing: .arrowRight),
          action: {}
        )
      }

      ButtonsInfoView(title: "option secondary - leading icon variant") {
        CKButtonMain(
          title: "Cancel",
          option: .secondary,
          variant: .icon(leading: .addUser),
          action: {}
        )
      }

      ButtonsInfoView(title: "option secondary - trailing icon variant") {
        CKButtonMain(
          title: "Cancel",
          option: .secondary,
          variant: .icon(trailing: .arrowRight),
          action: {}
        )
      }

      ButtonsInfoView(title: "option secondary - disabled") {
        CKButtonMain(
          title: "Cancel",
          option: .secondary,
          action: {}
        )
        .disabled(true)
      }
    }
  }

  // MARK: - Social Login - Default
  var socialLoginsDefaultButtons: some View {
    VStack {
      ButtonsInfoView(title: "Apple") {
        CKButtonSocialLogin(option: .apple, type: .default, action: {})
      }

      ButtonsInfoView(title: "Facebook") {
        CKButtonSocialLogin(option: .facebook, type: .default, action: {})
      }

      ButtonsInfoView(title: "Google") {
        CKButtonSocialLogin(option: .google, type: .default, action: {})
      }
    }
  }

  // MARK: - Social Login - Icon
  var socialLoginsIconButtons: some View {
    HStack {
      Spacer()
      ButtonsInfoView(title: "Apple") {
        CKButtonSocialLogin(option: .apple, type: .icon, action: {})
      }

      Spacer()

      ButtonsInfoView(title: "Facebook") {
        CKButtonSocialLogin(option: .facebook, type: .icon, action: {})
      }

      Spacer()

      ButtonsInfoView(title: "Google") {
        CKButtonSocialLogin(option: .google, type: .icon, action: {})
      }
      Spacer()
    }
  }
}

#Preview {
  ButtonsView()
}
