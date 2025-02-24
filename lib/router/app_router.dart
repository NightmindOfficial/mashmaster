import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/layout/error_404.dart';
import 'package:mashmaster/layout/stage.dart';
import 'package:mashmaster/router/app_branches.dart';
import 'package:mashmaster/router/routes.dart';

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
  ],
  errorPageBuilder: (context, state) => MaterialPage(child: Error404Screen()),
);
