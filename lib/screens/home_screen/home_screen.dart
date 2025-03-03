import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_cards.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:mashmaster/screens/settings_screen/widgets/settings_icon_button.dart';
import 'package:mashmaster/widgets/screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StageAppBar(actions: [SettingsIconButton()]),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.builder(
          itemCount: homeScreenCards.length,
          itemBuilder: (BuildContext context, int index) {
            return ScreenCard(
              title: homeScreenCards[index].title,
              subtitle: homeScreenCards[index].subtitle,
              icon: homeScreenCards[index].icon,
              color: homeScreenCards[index].color,
              location: homeScreenCards[index].location,
              onTap: homeScreenCards[index].onTap,
            );
          },
        ),
      ),
    );
  }
}
