import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_cards.dart';

class HomeScreenDosageCalc extends StatelessWidget {
  const HomeScreenDosageCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: 150, width: 300, child: homeScreenCards[0]),
    );
  }
}
