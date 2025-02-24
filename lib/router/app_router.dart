import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/layout/error_404.dart';
import 'package:mashmaster/layout/stage.dart';
import 'package:mashmaster/router/app_branches.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/screens/settings_screen/settings_screen.dart';

final _appNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _appNavigatorKey,
  initialLocation: MainRoute.home.path,
  routes: [
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              Stage(navigationShell: navigationShell),
      branches: appBranches.entries.map((entry) => entry.value).toList(),
    ),
    GoRoute(
      path: MainRoute.settings.path,
      builder: (context, state) => SettingsScreen(),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(child: Error404Screen()),
);
