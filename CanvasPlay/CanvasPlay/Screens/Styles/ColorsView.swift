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
      Color(.primary900)
        .colorCard(label: "900")

      Color(.primary800)
        .colorCard(label: "800")

      Color(.primary700)
        .colorCard(label: "700")

      Color(.primary600)
        .colorCard(label: "600")

      Color(.primary500)
        .colorCard(label: "500")

      Color(.primary400)
        .colorCard(label: "400")

      Color(.primary300)
        .colorCard(label: "300")

      Color(.primary200)
        .colorCard(label: "200")

      Color(.primary100)
        .colorCard(label: "100")

      Color(.primary50)
        .colorCard(label: "50")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Secondary Colors
  private var secondaryColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.secondary900)
        .colorCard(label: "900")

      Color(.secondary800)
        .colorCard(label: "800")

      Color(.secondary700)
        .colorCard(label: "700")

      Color(.secondary600)
        .colorCard(label: "600")

      Color(.secondary500)
        .colorCard(label: "500")

      Color(.secondary400)
        .colorCard(label: "400")

      Color(.secondary300)
        .colorCard(label: "300")

      Color(.secondary200)
        .colorCard(label: "200")

      Color(.secondary100)
        .colorCard(label: "100")

      Color(.secondary50)
        .colorCard(label: "50")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Alert & Status Colors
  private var alertAndStatusColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.success)
        .colorCard(label: "Success")

      Color(.info)
        .colorCard(label: "Info")

      Color(.warning)
        .colorCard(label: "Warning")

      Color(.error)
        .colorCard(label: "Error")

      Color(.disabled)
        .colorCard(label: "Disabled")

      Color(.disabledButton)
        .colorCard(label: "Disabled Button")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Grayscale Colors
  private var grayscaleColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.greyscale900)
        .colorCard(label: "900")

      Color(.greyscale800)
        .colorCard(label: "800")

      Color(.greyscale700)
        .colorCard(label: "700")

      Color(.greyscale600)
        .colorCard(label: "600")

      Color(.greyscale500)
        .colorCard(label: "500")

      Color(.greyscale400)
        .colorCard(label: "400")

      Color(.greyscale300)
        .colorCard(label: "300")

      Color(.greyscale200)
        .colorCard(label: "200")

      Color(.greyscale100)
        .colorCard(label: "100")

      Color(.greyscale50)
        .colorCard(label: "50")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Gradient Colors
  private var gradientColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      LinearGradient(gradient: .brown)
        .colorCard(label: "Brown")

      LinearGradient(gradient: .red)
        .colorCard(label: "Red")

      LinearGradient(gradient: .yellow)
        .colorCard(label: "Yellow")

      LinearGradient(gradient: .orange)
        .colorCard(label: "Orange")

      LinearGradient(gradient: .green)
        .colorCard(label: "Green")

      LinearGradient(gradient: .blue)
        .colorCard(label: "Blue")

      LinearGradient(gradient: .purple)
        .colorCard(label: "Purple")

      LinearGradient(gradient: .teal)
        .colorCard(label: "Teal")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Dark Colors
  private var darkColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.dark1)
        .colorCard(label: "Dark 1")
      Color(.dark2)
        .colorCard(label: "Dark 2")
      Color(.dark3)
        .colorCard(label: "Dark 3")
      Color(.dark4)
        .colorCard(label: "Dark 4")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Other Colors
  private var otherColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.otherWhite)
        .colorCard(label: "White")

      Color(.otherBlack)
        .colorCard(label: "Black")

      Color(.otherRed)
        .colorCard(label: "Red")

      Color(.otherPink)
        .colorCard(label: "Pink")

      Color(.otherPurple)
        .colorCard(label: "Purple")

      Color(.otherDeepPurple)
        .colorCard(label: "Deep Purple")

      Color(.otherIndigo)
        .colorCard(label: "Indigo")

      Color(.otherBlue)
        .colorCard(label: "Blue")

      Color(.otherLightBlue)
        .colorCard(label: "Light Blue")

      Color(.otherCyan)
        .colorCard(label: "Cyan")

      Color(.otherTeal)
        .colorCard(label: "Teal")

      Color(.otherGreen)
        .colorCard(label: "Green")

      Color(.otherLightGreen)
        .colorCard(label: "Light Green")

      Color(.otherLime)
        .colorCard(label: "Lime")

      Color(.otherYellow)
        .colorCard(label: "Yellow")

      Color(.otherAmber)
        .colorCard(label: "Amber")

      Color(.otherOrange)
        .colorCard(label: "Orange")

      Color(.otherDeepOrange)
        .colorCard(label: "Deep Orange")

      Color(.otherBrown)
        .colorCard(label: "Brown")

      Color(.otherBlueGrey)
        .colorCard(label: "Blue Grey")
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Background Colors
  private var backgroundColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.backgroundBrown)
        .colorCard(label: "Brown", labelColor: .gray)

      Color(.backgroundRed)
        .colorCard(label: "Red", labelColor: .gray)

      Color(.backgroundYellow)
        .colorCard(label: "Yellow", labelColor: .gray)

      Color(.backgroundOrange)
        .colorCard(label: "Orange", labelColor: .gray)

      Color(.backgroundGreen)
        .colorCard(label: "Green", labelColor: .gray)

      Color(.backgroundBlue)
        .colorCard(label: "Blue", labelColor: .gray)

      Color(.backgroundPurple)
        .colorCard(label: "Purple", labelColor: .gray)

      Color(.backgroundTeal)
        .colorCard(label: "Teal", labelColor: .gray)
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }

  // MARK: - Transparent Colors
  private var transparentColors: some View {
    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
      Color(.transparentBrown)
        .colorCard(label: "Brown", labelColor: .gray)

      Color(.transparentRed)
        .colorCard(label: "Red", labelColor: .gray)

      Color(.transparentYellow)
        .colorCard(label: "Yellow", labelColor: .gray)

      Color(.transparentOrange)
        .colorCard(label: "Orange", labelColor: .gray)

      Color(.transparentGreen)
        .colorCard(label: "Green", labelColor: .gray)

      Color(.transparentBlue)
        .colorCard(label: "Blue", labelColor: .gray)

      Color(.transparentPurple)
        .colorCard(label: "Purple", labelColor: .gray)

      Color(.transparentTeal)
        .colorCard(label: "Teal", labelColor: .gray)
    }
    .padding(.vertical)
    .listRowSeparator(.hidden)
  }
}

#Preview {
  ColorsView()
}
