import 'package:shared_preferences/shared_preferences.dart';

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

Future<bool> clearAllPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  final status = await prefs.clear();
  return status;
}
