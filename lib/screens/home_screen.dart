import 'package:flutter/material.dart';
import 'package:mashmaster/helpers/home_screen_cards.dart';
import 'package:mashmaster/widgets/screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MashMaster"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings_rounded))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: ListView.builder(
              itemCount: homeScreenCards.length,
              itemBuilder: (BuildContext context, int index) {
                return ScreenCard(
                  title: homeScreenCards[index].title,
                  icon: homeScreenCards[index].icon,
                  color: homeScreenCards[index].color,
                );
              })),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Calculations",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_rounded),
            label: "Contact",
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
