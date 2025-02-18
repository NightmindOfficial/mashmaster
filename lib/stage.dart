import 'package:flutter/material.dart';
import 'package:mashmaster/screens/contact_screen/contact_screen.dart';
import 'package:mashmaster/screens/home_screen/home_screen.dart';

class Stage extends StatefulWidget {
  const Stage({super.key});

  @override
  State<Stage> createState() => _StageState();
}

class _StageState extends State<Stage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///* APPBAR
      appBar: AppBar(
        title: const Text(
          "MashMaster",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded),
          ),
        ],
      ),

      ///* BODY
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _index,
          children: [HomeScreen(), ContactScreen()],
        ),
      ),

      ///* BNB
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected:
            (index) => setState(() {
              _index = index;
            }),
        destinations: <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.info_rounded),
            icon: Icon(Icons.info_outline_rounded),
            label: "Contact",
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
