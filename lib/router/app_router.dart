import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/layout/error_404.dart';
import 'package:mashmaster/layout/stage.dart';
import 'package:mashmaster/router/app_branches.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/screens/settings_screen/settings_screen.dart';
import 'package:mashmaster/screens/settings_screen/widgets/settings_icon_button.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final shellNavigatorHomeKey = GlobalKey<NavigatorState>(
  debugLabel: 'shellHome',
);
final shellNavigatorContactsKey = GlobalKey<NavigatorState>(
  debugLabel: 'shellContacts',
);

final GoRouter router = GoRouter(
  debugLogDiagnostics: true, //FUTURE remove this?
  navigatorKey: _rootNavigatorKey,
  initialLocation: MainRoute.home.path,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Stage(
          titleKey: _getTranslationKey(state.fullPath ?? '404'),
          navigationShell: navigationShell,
          actions: [SettingsIconButton()],
        );
      },
      branches: appBranches.entries.map((entry) => entry.value).toList(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: MainRoute.settings.path,
      builder: (context, state) => SettingsScreen(),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(child: Error404Screen()),
);

String _getTranslationKey(String path) {
  // Remove the leading "/" and replace remaining "/" with "_"
  String cleanPath = path.startsWith("/") ? path.substring(1) : path;
  return cleanPath.replaceAll("/", "_");
}
