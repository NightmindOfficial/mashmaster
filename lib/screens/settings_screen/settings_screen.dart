import 'package:flutter/material.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* APPBAR
      appBar: StageAppBar(),

      ///* BODY
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 64.0),
          child: Center(
            child: Text(
              "There are currently no settings for this app, since it is still in Beta.\n\nPlease come back later!",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
