import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_card_data.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:mashmaster/screens/settings_screen/widgets/settings_icon_button.dart';
import 'package:mashmaster/widgets/screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      appBar: StageAppBar(actions: [SettingsIconButton()]),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView(
          children:
              homeScreenCardDetails.entries.map((entry) {
                final key = entry.key;
                final data = entry.value;

                return ScreenCard(
                  title: t['home_screen_cards.$key.title'],
                  subtitle: t['home_screen_cards.$key.subtitle'],
                  icon: data.icon,
                  color: data.color,
                  location: data.location,
                );
              }).toList(),
        ),
      ),
    );
  }
}
