import 'package:flutter/widgets.dart';
import 'package:pro_image_editor/models/import_export/export_state_history.dart';
import 'package:pro_image_editor/models/import_export/import_state_history.dart';

/// Example usage:
/// ```dart
/// StateHistoryImporterConfigs(
///   enabled: false,
///   initWidth: 150,
///   buildStickers: (setLayer) {
///     return Container(); // Replace with your builder to load and display stickers.
///   },
/// );
/// ```
class StateHistoryImporterConfigs {
  /// Indicates whether the sticker editor is enabled.
  ///
  /// When set to `true`, the sticker editor is active and users can interact with it.
  /// If `false`, the editor is disabled and does not respond to user inputs.
  final bool enabled;

  /// The initial width of the stickers in the editor.
  ///
  /// Specifies the starting width of the stickers when they are first placed
  /// in the editor. This value is in logical pixels.
  final double initWidth;

  /// A callback that builds the stickers.
  ///
  /// This typedef is a function that takes a function as a parameter and
  /// returns a Widget. The function parameter `setLayer` is used to set a
  /// layer in the editor. This callback allows for customizing the appearance
  /// and behavior of stickers in the editor.
  final BuildStateHistories buildStateHistories;

  final Function(ExportStateHistory)? onExportStateHistory;

  /// Creates an instance of StateHistoryImporterConfigs with optional settings.
  ///
  /// By default, the editor is disabled (if not specified), and other properties
  /// are set to reasonable defaults.
  const StateHistoryImporterConfigs({
    required this.buildStateHistories,
    this.initWidth = 100,
    this.enabled = false,
    this.onExportStateHistory,
  });
}

typedef BuildStateHistories = Widget Function(
    Function(ImportStateHistory) setLayer);
