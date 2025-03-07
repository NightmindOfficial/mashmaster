import 'package:go_router/go_router.dart';
import 'package:mashmaster/router/app_router.dart';
import 'package:mashmaster/router/home_routes.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/screens/contact_screen/contact_screen.dart';
import 'package:mashmaster/screens/home_screen/home_screen.dart';

final Map<MainRoute, StatefulShellBranch> appBranches = {
  MainRoute.home: StatefulShellBranch(
    navigatorKey: shellNavigatorHomeKey,
    routes: <RouteBase>[
      GoRoute(
        path: MainRoute.home.path,
        builder: (context, state) => HomeScreen(),
        routes: homeRoutes.entries.map((route) => route.value).toList(),
      ),
    ],
  ),
  MainRoute.contact: StatefulShellBranch(
    navigatorKey: shellNavigatorContactsKey,
    routes: <RouteBase>[
      GoRoute(
        path: MainRoute.contact.path,
        builder: (context, state) => ContactScreen(),
      ),
    ],
  ),
};
