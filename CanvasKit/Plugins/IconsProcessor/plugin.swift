//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation
import PackagePlugin


/// A build tool plugin that automatically generates Swift constants for icons
/// found within the `Icons.xcassets` catalog.
///
/// This plugin scans `Icons.xcassets` for all image assets and generates a Swift file
/// containing static `Image` constants, allowing icons to be referenced in code
/// without string literals.
///
/// The generated Swift file is placed in the plugin's working directory, ensuring
/// icons remain up-to-date with the asset catalog.
@main
struct IconsProcessor: BuildToolPlugin {

  func createBuildCommands(
    context: PluginContext,
    target: any Target
  ) async throws -> [Command] {

    /// Ensures the target is a source module before proceeding.
    guard let target = target as? SourceModuleTarget else { return [] }

    return try target
      .sourceFiles(withSuffix: "xcassets")
      .filter { $0.url.path.hasSuffix("Resources/Icons.xcassets") }
      .map { assetCatalog in

        /// Input path pointing to `Icons.xcassets`.
        let input = assetCatalog.url

        /// Output path where the generated Swift file will be stored.
        let output = context.pluginWorkDirectoryURL.appending(path: "CKIcons.swift")

        /// Returns a build command to execute the `IconsProcessorExec` tool.
        return .buildCommand(
          displayName: "Generating icons as SwiftUI Image constants for use in code.",
          executable: try context.tool(named: "IconsProcessorExec").url,
          arguments: [input.path(), output.path()], // Uses `.path()` for correct formatting
          inputFiles: [input],
          outputFiles: [output]
        )
      }
  }
}
