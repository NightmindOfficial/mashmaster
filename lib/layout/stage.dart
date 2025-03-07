import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/models/destination.dart';

class Stage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Stage({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('stage'));

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        primary: false,
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      ///* BODY
      body: SafeArea(child: navigationShell),
      backgroundColor: Theme.of(context).colorScheme.tertiaryFixed,

      ///* BNB
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations:
            mainDestinations.entries.map((entry) {
              return NavigationDestination(
                icon: Icon(entry.value.icon),
                label: t['navbar.${entry.key.name}'],
                selectedIcon: Icon(entry.value.selectedIcon),
              );
            }).toList(),
      ),
    );
  }

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
