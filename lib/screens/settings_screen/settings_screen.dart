import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///* APPBAR
      appBar: AppBar(
        title: const Text(
          "MashMaster Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      ///* BODY
      body: const SafeArea(child: Center(child: Text("Settings go here."))),

      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
}
