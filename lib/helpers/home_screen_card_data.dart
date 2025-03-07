import 'package:flutter/material.dart';
import 'package:mashmaster/router/routes.dart';

class HomeScreenCardData {
  final IconData icon;
  final Color color;
  final String location;

  const HomeScreenCardData({
    required this.icon,
    required this.color,
    required this.location,
  });
}

final Map<String, HomeScreenCardData> homeScreenCardDetails = {
  'dosage_calc': HomeScreenCardData(
    icon: Icons.clean_hands_rounded,
    color: Colors.blue,
    location: HomeRoute.dosagecalc.path,
  ),
  'general_calc': HomeScreenCardData(
    icon: Icons.calculate_rounded,
    color: Colors.teal,
    location: HomeRoute.generalcalc.path,
  ),
  'brew_calc': HomeScreenCardData(
    icon: Icons.scale_rounded,
    color: Colors.amber,
    location: HomeRoute.brewcalc.path,
  ),
  'unit_calc': HomeScreenCardData(
    icon: Icons.format_underline_outlined,
    color: Colors.deepOrange,
    location: HomeRoute.unitcalc.path,
  ),
  'mash_calc': HomeScreenCardData(
    icon: Icons.grain_rounded,
    color: Colors.brown,
    location: HomeRoute.mashcalc.path,
  ),
};
