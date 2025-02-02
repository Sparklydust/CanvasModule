//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import SnapshotTesting
import SwiftUI
import XCTest
@testable import CanvasKit

final class IconographiesSnapshotsTests: XCTestCase {

  private let columns = [GridItem(.adaptive(minimum: 50))]

  func testIconography_regularIcons_snapshotIsEqualToExpected() {
    var result: some View {
      LazyVGrid(columns: columns, spacing: 16) {
        ForEach(CKIconAsset.allCases.filter { $0.isStylable }, id: \.self) {
          IconographyInfoView($0, style: .regular)
        }
      }
    }

    assertSnapshot(result)
  }

  func testIconography_boldIcons_snapshotIsEqualToExpected() {
    var result: some View {
      LazyVGrid(columns: columns, spacing: 16) {
        ForEach(CKIconAsset.allCases.filter { $0.isStylable }, id: \.self) {
          IconographyInfoView($0, style: .filled)
        }
      }
    }

    assertSnapshot(result)
  }

  func testIconography_loginIcons_snapshotIsEqualToExpected() {
    var result: some View {
      LazyVGrid(columns: columns, spacing: 16) {
        ForEach(CKIconAsset.allCases.filter { !$0.isStylable }, id: \.self) {
          if [.facebookLogin, .appleLogin, .googleLogin].contains($0) {
            IconographyInfoView($0, color: .none)
          }
        }
      }
    }

    assertSnapshot(result)
  }

  func testIconography_othersIcons_snapshotIsEqualToExpected() {
    var result: some View {
      LazyVGrid(columns: columns, spacing: 16) {
        ForEach(CKIconAsset.allCases.filter { !$0.isStylable }, id: \.self) {
          if ![.facebookLogin, .appleLogin, .googleLogin].contains($0) {
            IconographyInfoView($0, color: .none)
          }
        }
      }
    }

    assertSnapshot(result)
  }
}
