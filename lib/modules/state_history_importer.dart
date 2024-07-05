import 'package:flutter/material.dart';

import 'package:pro_image_editor/models/editor_configs/state_history_importer_configs.dart';
import 'package:pro_image_editor/models/import_export/import_state_history.dart';
import '../models/theme/theme.dart';
import '../models/i18n/i18n.dart';
import '../utils/design_mode.dart';

class StateHistoryImporter extends StatefulWidget {
  /// The internationalization (i18n) configuration for the editor.
  final I18n i18n;

  /// The design mode of the editor.
  final ImageEditorDesignModeE designMode;

  /// The theme configuration specific to the image editor.
  final ImageEditorTheme imageEditorTheme;

  /// The configuration for the EmojiPicker.
  ///
  /// This parameter allows you to customize the behavior and appearance of the EmojiPicker.
  final StateHistoryImporterConfigs configs;

  /// Creates an `StateHistoryImporter` widget.
  ///
  /// The [i18n] parameter is used for internationalization.
  ///
  /// The [designMode] parameter specifies the design mode of the editor.
  ///
  /// The [imageEditorTheme] parameter is the theme configuration specific to the image editor.
  const StateHistoryImporter({
    super.key,
    required this.configs,
    this.i18n = const I18n(),
    this.imageEditorTheme = const ImageEditorTheme(),
    this.designMode = ImageEditorDesignModeE.material,
  });

  @override
  createState() => StateHistoryImporterState();
}

/// The state class for the `StateHistoryImporter` widget.
class StateHistoryImporterState extends State<StateHistoryImporter> {
  /// Closes the editor without applying changes.
  void close() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return widget.configs.buildStateHistories(setLayer);
  }

  void setLayer(ImportStateHistory stateHistory) {
    Navigator.of(context).pop(stateHistory);
  }
}
