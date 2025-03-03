import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/models/destination.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/screens/settings_screen/widgets/settings_icon_button.dart';

class Stage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Stage({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('stage'));

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);

    // Get current route path
    final String currentPath =
        router.routeInformationProvider.value.uri.toString();
    dev.log("Current Page: $currentPath");

    final String title = Routes.getTitle(currentPath);

    //Check if GoRouter can pop (for global routes like /settings)
    final bool canPopGlobal = router.canPop();
    dev.log("canPopGlobal -> $canPopGlobal");

    return Scaffold(
      ///* APPBAR
      appBar: AppBar(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading:
            canPopGlobal
                ? IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    router.pop();
                  },
                )
                : null,
        actions: [SettingsIconButton()],
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
