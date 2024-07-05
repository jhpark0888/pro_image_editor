import 'package:flutter/material.dart';

/// Customizable icons for the Sticker Editor component.
class IconsStateHistoryImporter {
  /// The icon to be displayed in the bottom navigation bar.
  final IconData bottomNavBar;

  /// Creates an instance of [IconsStateHistoryImporter] with customizable icon settings.
  ///
  /// You can provide a custom [bottomNavBar] icon to be displayed in the
  /// bottom navigation bar of the Sticker Editor component. If no custom icon
  /// is provided, the default icon is used.
  ///
  /// Example:
  ///
  /// ```dart
  /// IconsStateHistoryImporter(
  ///   bottomNavBar: Icons.layers_outlined,
  /// )
  /// ```
  const IconsStateHistoryImporter({
    this.bottomNavBar = Icons.import_export_rounded,
  });
}
