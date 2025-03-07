enum MainRoute { home, contact, settings }

enum HomeRoute { init, dosagecalc, generalcalc, brewcalc, unitcalc, mashcalc }

class Routes<T extends Enum> {
  static final Map<Type, Map<Enum, String>> _routes = {
    MainRoute: {
      MainRoute.home: "/",
      MainRoute.contact: "/contact",
      MainRoute.settings: "/settings",
    },

    HomeRoute: {
      HomeRoute.dosagecalc: "dosage",
      HomeRoute.generalcalc: "general",
      HomeRoute.brewcalc: "brew",
      HomeRoute.unitcalc: "unit",
      HomeRoute.mashcalc: "mash",
    },
  };

  // Define parent-child relationships to construct absolute paths
  static final Map<Type, Enum> _parentRoutes = {HomeRoute: MainRoute.home};

  static String route<T extends Enum>(T route) {
    //Get the base path
    String? basePath = _routes[route.runtimeType]?[route];
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
    return _routes[route.runtimeType]?[route] ?? "/404";
  }
}

//* Universal extension to access paths without hardcoding static getters

extension RoutePath on Enum {
  /// Returns the full path of the route stored in the desired Route Enum.
  String get path => Routes.route(this);

  /// Returns the ABSOLUTE path, meaning only the nested version of the desired Route Enum.
  String get pathAbs => Routes.absoluteRoute(this);
}


// Example Usage:

//   MainRoute.home.path --> Output: /
//   MainRoute.explore.path --> Output: /explore
//   AuthRoute.login.path --> Output: /auth/login