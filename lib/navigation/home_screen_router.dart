import 'package:flutter/material.dart';
import 'package:mashmaster/screens/home_screen/home_screen.dart';
import 'package:mashmaster/screens/home_screen/home_screen_brew_calc.dart';
import 'package:mashmaster/screens/home_screen/home_screen_dosage_calc.dart';
import 'package:mashmaster/screens/home_screen/home_screen_general_calc.dart';
import 'package:mashmaster/screens/home_screen/home_screen_mash_calc.dart';
import 'package:mashmaster/screens/home_screen/home_screen_unit_calc.dart';

class HomeScreenRouter extends StatefulWidget {
  const HomeScreenRouter({super.key});

  @override
  State<HomeScreenRouter> createState() => _HomeScreenRouterState();
}

class _HomeScreenRouterState extends State<HomeScreenRouter> {
  GlobalKey<NavigatorState> homeScreenNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: homeScreenNavigatorKey,

      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/homescreen/dosage-calc':
                return HomeScreenDosageCalc();
              case '/homescreen/general-calc':
                return HomeScreenGeneralCalc();
              case '/homescreen/brew-calc':
                return HomeScreenBrewCalc();
              case '/homescreen/unit-calc':
                return HomeScreenUnitCalc();
              case '/homescreen/mash-calc':
                return HomeScreenMashCalc();
              default:
                return HomeScreen();
            }
          },
        );
      },
    );
  }
}
