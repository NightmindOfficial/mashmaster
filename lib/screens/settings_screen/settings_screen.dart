import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';

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
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.language_rounded),
                title: Text(t.language.label),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: DropdownMenu(
                  initialSelection: LocaleSettings.currentLocale,
                  onSelected: (locale) {
                    if (locale != null) {
                      LocaleSettings.setLocale(locale);
                    }
                  },
                  dropdownMenuEntries: <DropdownMenuEntry<AppLocale>>[
                    DropdownMenuEntry(
                      leadingIcon: Text("🇬🇧"),
                      value: AppLocale.en,
                      label: t.language.en,
                    ),
                    DropdownMenuEntry(
                      leadingIcon: Text("🇩🇪"),
                      value: AppLocale.de,
                      label: t.language.de,
                    ),
                  ],
                ),
              ),
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
