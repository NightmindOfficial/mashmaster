import 'package:go_router/go_router.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/screens/home_screen/pages/home_screen_brew_calc.dart';
import 'package:mashmaster/screens/home_screen/pages/home_screen_dosage_calc.dart';
import 'package:mashmaster/screens/home_screen/pages/home_screen_general_calc.dart';
import 'package:mashmaster/screens/home_screen/pages/home_screen_mash_calc.dart';
import 'package:mashmaster/screens/home_screen/pages/home_screen_unit_calc.dart';

final Map<HomeRoute, GoRoute> homeRoutes = {
  HomeRoute.dosagecalc: GoRoute(
    path: HomeRoute.dosagecalc.pathAbs,
    builder: (context, state) => HomeScreenDosageCalc(),
  ),
  HomeRoute.generalcalc: GoRoute(
    path: HomeRoute.generalcalc.pathAbs,
    builder: (context, state) => HomeScreenGeneralCalc(),
  ),
  HomeRoute.brewcalc: GoRoute(
    path: HomeRoute.brewcalc.pathAbs,
    builder: (context, state) => HomeScreenBrewCalc(),
  ),
  HomeRoute.unitcalc: GoRoute(
    path: HomeRoute.unitcalc.pathAbs,
    builder: (context, state) => HomeScreenUnitCalc(),
  ),
  HomeRoute.mashcalc: GoRoute(
    path: HomeRoute.mashcalc.pathAbs,
    builder: (context, state) => HomeScreenMashCalc(),
  ),
};
