import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_cards.dart';
import 'package:mashmaster/widgets/screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListView.builder(
        itemCount: homeScreenCards.length,
        itemBuilder: (BuildContext context, int index) {
          return ScreenCard(
            title: homeScreenCards[index].title,
            icon: homeScreenCards[index].icon,
            color: homeScreenCards[index].color,
            location: homeScreenCards[index].location,
            onTap: homeScreenCards[index].onTap,
          );
        },
      ),
    );
  }
}
