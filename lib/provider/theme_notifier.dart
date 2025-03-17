import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as dev;

final themeNotifierProvider = ChangeNotifierProvider(
  create: (_) => ThemeNotifier(),
);

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _mode;

  ThemeNotifier({ThemeMode mode = ThemeMode.system}) : _mode = mode, super() {
    loadTheme();
  }

  ThemeMode get mode => _mode;
  bool get isDarkMode => _mode == ThemeMode.dark;
  bool get isSystemMode => _mode == ThemeMode.system;

  Future<void> loadTheme() async {
    dev.log("Loading the Theme now.");
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? brightness = prefs.getString('brightness');
    final bool? useSystem = prefs.getBool('useSystem');

    if (useSystem == true) {
      dev.log("Prefs tells me to use the System theme. Applying that now...");
      _mode = ThemeMode.system;
      notifyListeners();
      return;
    }

    switch (brightness) {
      case 'light':
        dev.log("Prefs tells me to use the light theme. Applying that now...");

        _mode = ThemeMode.light;
        break;
      case 'dark':
        dev.log("Prefs tells me to use the dark theme. Applying that now...");

        _mode = ThemeMode.dark;
        break;
      default:
        //*If no brightness has been stored before, useSystem will be written to prefs. This should happen on first app startup.
        dev.log(
          "I have found nothing in prefs. I will set useSystem to true, therefore the system theme will be used.",
        );
        await prefs.setBool("useSystem", true);
        _mode = ThemeMode.system;
    }

    notifyListeners();
  }

  void toggleTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_mode == ThemeMode.light) {
      dev.log(
        "User has switched from light to dark theme.\nTheme Loader Says:",
      );

      await prefs.setString("brightness", "dark");
      loadTheme();
    } else if (_mode == ThemeMode.dark) {
      dev.log(
        "User has switched from dark to light theme.\nTheme Loader Says:",
      );

      await prefs.setString("brightness", "light");
      loadTheme();
    }
  }

  void toggleSystemTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? brightness = prefs.getString("brightness");

    if (_mode == ThemeMode.system) {
      dev.log("User wants to turn off the system theme.");

      await prefs.setBool("useSystem", false);

      //* If brightness has never been set before, default to light theme, to avoid an endless "Use what the system says" loop.
      if (brightness == null) {
        dev.log(
          "Uh oh! We have never defined a custom theme before. Applying the light theme as a fallback.\nTheme Loader says:",
        );

        await prefs.setString("brightness", "light");
      }
      loadTheme();
    } else {
      dev.log("User wants to turn on the system theme.\nTheme Loader says:");

      await prefs.setBool('useSystem', true);
      loadTheme();
    }
  }
}
