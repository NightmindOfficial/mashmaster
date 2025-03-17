import 'package:flutter/material.dart';
import 'package:mashmaster/provider/theme_notifier.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeNotifier themeNotifier = context.watch<ThemeNotifier>();

    return SwitchListTile.adaptive(
      secondary: Icon(Icons.color_lens_rounded),
      thumbIcon: WidgetStateProperty.resolveWith<Icon?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return const Icon(Icons.dark_mode_rounded);
        } else if (states.contains(WidgetState.disabled)) {
          return const Icon(Icons.perm_device_information_rounded);
        } else {
          return const Icon(Icons.wb_sunny_rounded);
        }
      }),

      value: themeNotifier.isDarkMode,
      onChanged:
          themeNotifier.isSystemMode
              ? null
              : (_) {
                themeNotifier.toggleTheme();
              },
      title: Text("Dark Mode"),
    );
  }
}
