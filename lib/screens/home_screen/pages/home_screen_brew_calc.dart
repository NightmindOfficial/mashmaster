import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_cards.dart';

class HomeScreenBrewCalc extends StatelessWidget {
  const HomeScreenBrewCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: 150, width: 300, child: homeScreenCards[2]),
    );
  }
}
