//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import Foundation
import PackagePlugin

/// A build tool plugin that generates symbolic links for all `__Snapshots__` folders
/// in the project.
///
/// This plugin is designed to assist in Xcode Cloud CI workflows by centralizing snapshot
/// locations for easy access.
/// The symbolic links are created in the `ci_scripts/__Snapshots__` folder and point
/// to their respective `__Snapshots__` directories found in the project's test files.
@main
struct SnapshotsSimlinkPlugin: BuildToolPlugin {

  func createBuildCommands(
    context: PluginContext,
    target: Target
  ) throws -> [Command] {

    let scriptPath = context.package.directoryURL.appendingPathComponent("ci_scripts/generate_symlinks.sh")

    return [
      .prebuildCommand(
        displayName: "Generate Snapshot Symbolic Links",
        executable: URL(fileURLWithPath: "/bin/bash"),
        arguments: [scriptPath.path],
        outputFilesDirectory: context.pluginWorkDirectoryURL
      )
    ]
  }
}
