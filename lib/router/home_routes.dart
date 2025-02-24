import 'package:go_router/go_router.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/screens/home_screen/pages/home_screen_dosage_calc.dart';

final Map<HomeRoute, GoRoute> homeRoutes = {
  HomeRoute.dosagecalc: GoRoute(
    path: HomeRoute.dosagecalc.pathAbs,
    builder: (context, state) => HomeScreenDosageCalc(),
  ),
};
