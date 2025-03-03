import 'package:flutter/material.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';

class HomeScreenBrewCalc extends StatelessWidget {
  const HomeScreenBrewCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StageAppBar(),
      body: Center(
        child: Text(
          "This feature has not been finalized yet. Please come back later!",
        ),
      ),
    );
  }
}
