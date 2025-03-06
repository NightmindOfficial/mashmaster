import 'package:mashmaster/i18n/generated/translations.g.dart';

enum MainRoute { home, contact, settings }

enum HomeRoute { init, dosagecalc, generalcalc, brewcalc, unitcalc, mashcalc }

class Routes<T extends Enum> {
  static final Map<Type, Map<Enum, Map<String, String>>> _routes = {
    MainRoute: {
      MainRoute.home: {"path": "/", "title": t.app_title},
      MainRoute.contact: {"path": "/contact", "title": t.app_title},
      MainRoute.settings: {
        "path": "/settings",
        "title": t.settings_screen.title,
      },
    },

    HomeRoute: {
      HomeRoute.dosagecalc: {
        "path": "dosage",
        "title": t.home_screen_cards.dosage_calc.title,
      },
      HomeRoute.generalcalc: {
        "path": "general",
        "title": t.home_screen_cards.general_calc.title,
      },
      HomeRoute.brewcalc: {
        "path": "brew",
        "title": t.home_screen_cards.brew_calc.title,
      },
      HomeRoute.unitcalc: {
        "path": "unit",
        "title": t.home_screen_cards.unit_calc.title,
      },
      HomeRoute.mashcalc: {
        "path": "mash",
        "title": t.home_screen_cards.mash_calc.title,
      },
    },
  };

  // Define parent-child relationships to construct absolute paths
  static final Map<Type, Enum> _parentRoutes = {HomeRoute: MainRoute.home};

  // **NEW: A Flattened Map for Quick Lookup**
  static final Map<String, String> _titleMap = {
    for (var type in _routes.values)
      for (var entry in type.entries)
        route(entry.key): entry.value["title"] ?? "Unknown Page",
  };

  static String route<T extends Enum>(T route) {
    //Get the base path
    String? basePath = _routes[route.runtimeType]?[route]?["path"];

    if (basePath == null) return "/404";

    //Then check if the route has a parent (nested navigation)
    if (_parentRoutes.containsKey(route.runtimeType)) {
      Enum parent = _parentRoutes[route.runtimeType]!;
      String parentPath = Routes.route(parent);

      // Avoid double slashes when the parent path is "/"
      if (parentPath == "/") {
        return "/$basePath";
      }
      return "$parentPath/$basePath";
    }

    return basePath;
  }

  //* Method to get absolute paths for router configuration
  static String absoluteRoute<T extends Enum>(T route) {
    return _routes[route.runtimeType]?[route]?["path"] ?? "/404";
  }

  //*Method to get the title of a route
  static String getTitle(String path) {
    return _titleMap[path] ?? "ERROR";
  }
}

//* Universal extension to access paths without hardcoding static getters

extension RoutePath on Enum {
  /// Returns the full path of the route stored in the desired Route Enum.
  String get path => Routes.route(this);

  /// Returns the ABSOLUTE path, meaning only the nested version of the desired Route Enum.
  String get pathAbs => Routes.absoluteRoute(this);

  /// Returns the title of the route for UI use.
  String get title => Routes.getTitle(path);
}


// Example Usage:

//   MainRoute.home.path --> Output: /
//   MainRoute.explore.path --> Output: /explore
//   AuthRoute.login.path --> Output: /auth/login