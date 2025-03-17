import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/language_service.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'dart:developer' as dev;

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return ListTile(
      leading: Icon(Icons.language_rounded),
      title: Text(t.language.label),
      titleAlignment: ListTileTitleAlignment.center,
      trailing: DropdownMenu(
        initialSelection: LocaleSettings.currentLocale,
        onSelected: (locale) async {
          if (locale != null) {
            LocaleSettings.setLocale(locale);
            dev.log("Persisting ${locale.languageCode} in prefs");
            await persistLanguage(locale.languageCode);
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
    );
  }
}
