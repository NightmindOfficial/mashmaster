import 'package:flutter/material.dart';
import 'package:mashmaster/provider/theme_notifier.dart';
import 'package:provider/provider.dart';

class SystemThemeSwitch extends StatelessWidget {
  const SystemThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeNotifier themeNotifier = context.watch<ThemeNotifier>();

    return SwitchListTile.adaptive(
      secondary: Icon(Icons.perm_device_information_rounded),
      // value: themeNotifier.isSystemMode,
      value: themeNotifier.isSystemMode,
      onChanged: (_) => themeNotifier.toggleSystemTheme(),
      title: Text("Use System Theme"),
    );
  }
}
