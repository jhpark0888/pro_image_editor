/// Internationalization (i18n) settings for the I18nStickerEditor Editor component.
class I18nStateHistoryImporter {
  /// Text for the bottom navigation bar item that opens the I18nStateHistoryImporter Editor.
  final String bottomNavigationBarText;

  /// Creates an instance of [I18nStateHistoryImporter] with customizable internationalization settings.
  ///
  /// You can provide translations and messages specifically for the I18nStateHistoryImporter Editor
  /// component of your application.
  ///
  /// Example:
  ///
  /// ```dart
  /// I18nStateHistoryImporter(
  ///   bottomNavigationBarText: 'I18nStateHistoryImporter',
  /// )
  /// ```
  const I18nStateHistoryImporter({
    this.bottomNavigationBarText = 'Histories',
  });
}
