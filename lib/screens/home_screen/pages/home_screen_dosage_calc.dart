import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_cards.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';

class HomeScreenDosageCalc extends StatelessWidget {
  const HomeScreenDosageCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StageAppBar(),
      body: SizedBox(height: 150, width: 300, child: homeScreenCards[0]),
    );
  }
}
