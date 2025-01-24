import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../core/app_export.dart';
import 'ar/ar_translations.dart';
import 'en/en_translations.dart';

extension LocalizationExtension on String {
  String get tr => AppLocalization.of().getString(this);
}

// ignore_for_file: must_be_immutable
class AppLocalization {
  AppLocalization(this.locale);

  Locale locale;

  static final Map<String, Map<String, String>> localizedValues = {
    'en': en,
    'ar': ar,
  };

  static AppLocalization of() {
    return Localizations.of<AppLocalization>(
      NavigatorService.navigatorKey.currentContext!,
      AppLocalization,
    )!;
  }

  static List<String> languages() => localizedValues.keys.toList();

  String getString(String text) =>
      localizedValues[locale.languageCode]![text] ?? text;
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalization.languages().contains(locale.languageCode);

  // Returning a SynchronousFuture here because an async "load" operation
  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(AppLocalization(locale));
  }

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}