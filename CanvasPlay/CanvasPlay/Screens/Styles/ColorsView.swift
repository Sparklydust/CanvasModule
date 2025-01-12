//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import CanvasKit
import SwiftUI

/// Populates the app's available colors from the design system defined in ``CanvasKit``.
/// Colors are displayed in categorized sections for easy reference and visualization.
struct ColorsView: View {

  var body: some View {
    NavigationStack {
      VStack {
        Divider()

        List {
          Section("Primary") { primaryColors }
          Section("Secondary") { secondaryColors }
          Section("Alert & Status") { alertAndStatusColors }
          Section("Grayscale") { grayscaleColors }
          Section("Gradient") { gradientColors }
          Section("Dark") { darkColors }
          Section("Other") { otherColors }
          Section("Background") { backgroundColors }
          Section("Transparent") { transparentColors }
        }
        .listStyle(.plain)
      }
      .navigationBarTitleDisplayMode(.inline)
      .navigationTitle("Colors")
      .toolbarCloseButton()
    }
  }

  // MARK: - Primary Colors
  private var primaryColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckPrimary900)
        .colorCard(label: "900")

      Color(.ckPrimary800)
        .colorCard(label: "800")

      Color(.ckPrimary700)
        .colorCard(label: "700")

      Color(.ckPrimary600)
        .colorCard(label: "600")

      Color(.ckPrimary500)
        .colorCard(label: "500")

      Color(.ckPrimary400)
        .colorCard(label: "400")

      Color(.ckPrimary300)
        .colorCard(label: "300")

      Color(.ckPrimary200)
        .colorCard(label: "200")

      Color(.ckPrimary100)
        .colorCard(label: "100")

      Color(.ckPrimary50)
        .colorCard(label: "50")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Secondary Colors
  private var secondaryColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckSecondary900)
        .colorCard(label: "900")

      Color(.ckSecondary800)
        .colorCard(label: "800")

      Color(.ckSecondary700)
        .colorCard(label: "700")

      Color(.ckSecondary600)
        .colorCard(label: "600")

      Color(.ckSecondary500)
        .colorCard(label: "500")

      Color(.ckSecondary400)
        .colorCard(label: "400")

      Color(.ckSecondary300)
        .colorCard(label: "300")

      Color(.ckSecondary200)
        .colorCard(label: "200")

      Color(.ckSecondary100)
        .colorCard(label: "100")

      Color(.ckSecondary50)
        .colorCard(label: "50")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Alert & Status Colors
  private var alertAndStatusColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckSuccess)
        .colorCard(label: "Success")

      Color(.ckInfo)
        .colorCard(label: "Info")

      Color(.ckWarning)
        .colorCard(label: "Warning")

      Color(.ckError)
        .colorCard(label: "Error")

      Color(.ckDisabled)
        .colorCard(label: "Disabled")

      Color(.ckDisabledButton)
        .colorCard(label: "Disabled Button")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Grayscale Colors
  private var grayscaleColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckGreyscale900)
        .colorCard(label: "900")

      Color(.ckGreyscale800)
        .colorCard(label: "800")

      Color(.ckGreyscale700)
        .colorCard(label: "700")

      Color(.ckGreyscale600)
        .colorCard(label: "600")

      Color(.ckGreyscale500)
        .colorCard(label: "500")

      Color(.ckGreyscale400)
        .colorCard(label: "400")

      Color(.ckGreyscale300)
        .colorCard(label: "300")

      Color(.ckGreyscale200)
        .colorCard(label: "200")

      Color(.ckGreyscale100)
        .colorCard(label: "100")

      Color(.ckGreyscale50)
        .colorCard(label: "50")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Gradient Colors
  private var gradientColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      LinearGradient(gradient: .ckBrown)
        .colorCard(label: "Brown")

      LinearGradient(gradient: .ckRed)
        .colorCard(label: "Red")

      LinearGradient(gradient: .ckYellow)
        .colorCard(label: "Yellow")

      LinearGradient(gradient: .ckOrange)
        .colorCard(label: "Orange")

      LinearGradient(gradient: .ckGreen)
        .colorCard(label: "Green")

      LinearGradient(gradient: .ckBlue)
        .colorCard(label: "Blue")

      LinearGradient(gradient: .ckPurple)
        .colorCard(label: "Purple")

      LinearGradient(gradient: .ckTeal)
        .colorCard(label: "Teal")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Dark Colors
  private var darkColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckDark1)
        .colorCard(label: "Dark 1")
      Color(.ckDark2)
        .colorCard(label: "Dark 2")
      Color(.ckDark3)
        .colorCard(label: "Dark 3")
      Color(.ckDark4)
        .colorCard(label: "Dark 4")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Other Colors
  private var otherColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckWhite)
        .colorCard(label: "White")

      Color(.ckBlack)
        .colorCard(label: "Black")

      Color(.ckRed)
        .colorCard(label: "Red")

      Color(.ckPink)
        .colorCard(label: "Pink")

      Color(.ckPurple)
        .colorCard(label: "Purple")

      Color(.ckDeepPurple)
        .colorCard(label: "Deep Purple")

      Color(.ckIndigo)
        .colorCard(label: "Indigo")

      Color(.ckBlue)
        .colorCard(label: "Blue")

      Color(.ckLightBlue)
        .colorCard(label: "Light Blue")

      Color(.ckCyan)
        .colorCard(label: "Cyan")

      Color(.ckTeal)
        .colorCard(label: "Teal")

      Color(.ckGreen)
        .colorCard(label: "Green")

      Color(.ckLightGreen)
        .colorCard(label: "Light Green")

      Color(.ckLime)
        .colorCard(label: "Lime")

      Color(.ckYellow)
        .colorCard(label: "Yellow")

      Color(.ckAmber)
        .colorCard(label: "Amber")

      Color(.ckOrange)
        .colorCard(label: "Orange")

      Color(.ckDeepOrange)
        .colorCard(label: "Deep Orange")

      Color(.ckBrown)
        .colorCard(label: "Brown")

      Color(.ckBlueGrey)
        .colorCard(label: "Blue Grey")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Background Colors
  private var backgroundColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckBackgroundBrown)
        .colorCard(label: "Brown", labelColor: .gray)

      Color(.ckBackgroundRed)
        .colorCard(label: "Red", labelColor: .gray)

      Color(.ckBackgroundYellow)
        .colorCard(label: "Yellow", labelColor: .gray)

      Color(.ckBackgroundOrange)
        .colorCard(label: "Orange", labelColor: .gray)

      Color(.ckBackgroundGreen)
        .colorCard(label: "Green", labelColor: .gray)

      Color(.ckBackgroundBlue)
        .colorCard(label: "Blue", labelColor: .gray)

      Color(.ckBackgroundPurple)
        .colorCard(label: "Purple", labelColor: .gray)

      Color(.ckBackgroundTeal)
        .colorCard(label: "Teal", labelColor: .gray)
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Transparent Colors
  private var transparentColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.ckTransparentBrown)
        .colorCard(label: "Brown", labelColor: .gray)

      Color(.ckTransparentRed)
        .colorCard(label: "Red", labelColor: .gray)

      Color(.ckTransparentYellow)
        .colorCard(label: "Yellow", labelColor: .gray)

      Color(.ckTransparentOrange)
        .colorCard(label: "Orange", labelColor: .gray)

      Color(.ckTransparentGreen)
        .colorCard(label: "Green", labelColor: .gray)

      Color(.ckTransparentBlue)
        .colorCard(label: "Blue", labelColor: .gray)

      Color(.ckTransparentPurple)
        .colorCard(label: "Purple", labelColor: .gray)

      Color(.ckTransparentTeal)
        .colorCard(label: "Teal", labelColor: .gray)
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }
}

#Preview {
  ColorsView()
}
