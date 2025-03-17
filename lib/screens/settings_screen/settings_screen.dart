import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:mashmaster/screens/settings_screen/widgets/clear_pref_button.dart';
import 'package:mashmaster/screens/settings_screen/widgets/language_dropdown.dart';
import 'package:mashmaster/screens/settings_screen/widgets/system_theme_switch.dart';
import 'package:mashmaster/screens/settings_screen/widgets/theme_switch.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      //* APPBAR
      appBar: StageAppBar(titleKey: 'settings'),

      ///* BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              LanguageDropdown(),
              Divider(height: 32),
              ThemeSwitch(),
              SystemThemeSwitch(),
              Divider(height: 32),
              ClearPrefButton(),
              Divider(height: 32),
              Text(
                t.settings_screen.placeholder_label,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
