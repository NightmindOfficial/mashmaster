import 'dart:developer' as dev;

import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setLanguageFromPrefs() async {
  final Map<String, dynamic> prefMap = await retrievePrefs();
  if (prefMap['lang'] != null) {
    dev.log(
      "[App Startup] Found lang flag in SharedPreferences. Setting language to ${prefMap['lang']}.",
    );
    LocaleSettings.setLocaleRaw(prefMap['lang']);
  } else {
    dev.log("[App Startup] No lang flag found. Using Device Locale.");

    LocaleSettings.useDeviceLocale();
  }
}

Future<void> persistLanguage(String languageCode) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString("lang", languageCode);
  dev.log("Successfully persisted language");
}

Future<Map<String, dynamic>> retrievePrefs() async {
  final prefs = await SharedPreferences.getInstance();
  final Set<String> keys = prefs.getKeys();

  final Map<String, dynamic> allPrefs = {};
  for (String key in keys) {
    final value = prefs.get(key);
    allPrefs[key] = value;
  }
  return allPrefs;
}
