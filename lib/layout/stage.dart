import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/models/destination.dart';
import 'package:mashmaster/router/routes.dart';

class Stage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Stage({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('stage'));

  @override
  Widget build(BuildContext context) {
    // Get current route path
    final String currentPath =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
    dev.log(currentPath);

    final String title = Routes.getTitle(currentPath);

    //Determine if back buttion should be visible
    final bool canGoBack = GoRouter.of(context).canPop();

    return Scaffold(
      ///* APPBAR
      appBar: AppBar(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading:
            canGoBack
                ? IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => GoRouter.of(context).pop(),
                )
                : null,
        actions: [
          IconButton(
            onPressed: () => context.push(MainRoute.settings.pathAbs),
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
