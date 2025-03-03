import 'package:flutter/cupertino.dart';
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
    pageBuilder:
        (context, state) => CupertinoPage(child: HomeScreenDosageCalc()),
  ),
  HomeRoute.generalcalc: GoRoute(
    path: HomeRoute.generalcalc.pathAbs,
    pageBuilder:
        (context, state) => CupertinoPage(child: HomeScreenGeneralCalc()),
  ),
  HomeRoute.brewcalc: GoRoute(
    path: HomeRoute.brewcalc.pathAbs,
    pageBuilder: (context, state) => CupertinoPage(child: HomeScreenBrewCalc()),
  ),
  HomeRoute.unitcalc: GoRoute(
    path: HomeRoute.unitcalc.pathAbs,
    pageBuilder: (context, state) => CupertinoPage(child: HomeScreenUnitCalc()),
  ),
  HomeRoute.mashcalc: GoRoute(
    path: HomeRoute.mashcalc.pathAbs,
    pageBuilder: (context, state) => CupertinoPage(child: HomeScreenMashCalc()),
  ),
};
