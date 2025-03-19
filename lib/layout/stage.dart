import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:mashmaster/models/destination.dart';

class Stage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final String titleKey;
  final List<Widget>? _actions;

  const Stage({
    required this.navigationShell,
    required this.titleKey,
    List<Widget>? actions,
    Key? key,
  }) : _actions = actions,
       super(key: key ?? const ValueKey<String>('stage'));

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: StageAppBar(actions: _actions, titleKey: titleKey),

      ///* BODY
      body: SafeArea(child: navigationShell),
      backgroundColor: Theme.of(context).colorScheme.surface,

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
