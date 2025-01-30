//
// Copyright © 2025 Roland Lariotte. Under the MIT License.
//

import PackagePlugin
import Foundation

/// A build tool plugin that dynamically excludes all `__Snapshots__` folders from the
/// Swift Package Manager build process.
///
/// This plugin ensures that snapshot directories do not interfere with SPM builds.
/// The plugin scans the package directory for `__Snapshots__` folders and writes
/// their paths to a file, which can be used to exclude them dynamically.
@main
struct ExcludeSnapshotsPlugin: BuildToolPlugin {

  func createBuildCommands(
    context: PluginContext,
    target: Target
  ) throws -> [Command] {

    let snapshotsDirectories = findSnapshotsDirectories(in: context.package.directoryURL)

    // Write excluded folders to a file.
    let excludeFile = context
      .pluginWorkDirectoryURL
      .appendingPathComponent("excluded_snapshots.txt")

    try snapshotsDirectories
      .joined(separator: "\n")
      .write(to: excludeFile, atomically: true, encoding: .utf8)

    // Create a dummy command to pass exclusions.
    return [
      .prebuildCommand(
        displayName: "Exclude __Snapshots__ folders",
        executable: URL(fileURLWithPath: "/bin/echo"), // Dummy command
        arguments: [],
        outputFilesDirectory: context.pluginWorkDirectoryURL
      )
    ]
  }

  /// Recursively finds all `__Snapshots__` directories in the given directory.
  ///
  /// - Parameter directory: The root directory to search.
  /// - Returns: An array of paths to `__Snapshots__` directories.
  private func findSnapshotsDirectories(in directory: URL) -> [String] {

    var snapshotsDirectories = [String]()
    let fileManager = FileManager.default

    if let enumerator = fileManager.enumerator(
      at: directory,
      includingPropertiesForKeys: [.isDirectoryKey],
      options: [.skipsHiddenFiles]
    ) {
      for case let fileURL as URL in enumerator {
        if fileURL.lastPathComponent == "__Snapshots__" {
          snapshotsDirectories.append(fileURL.path)
        }
      }
    }
    return snapshotsDirectories
  }
}
