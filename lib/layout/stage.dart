import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/models/destination.dart';

class Stage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Stage({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('stage'));

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
      body: SafeArea(child: navigationShell),

      ///* BNB
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations:
            mainDestinations
                .map(
                  (destination) => NavigationDestination(
                    icon: Icon(destination.icon),
                    label: destination.label,
                    selectedIcon: Icon(destination.selectedIcon),
                  ),
                )
                .toList(),
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
