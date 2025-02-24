import 'package:flutter/material.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/widgets/screen_card.dart';

final List<ScreenCard> homeScreenCards = [
  ScreenCard(
    icon: Icons.clean_hands_rounded,
    title: "Reingungsmittel-Dosierer",
    color: Colors.blue,
    location: HomeRoute.dosagecalc.path,
  ),
  ScreenCard(
    title: "Allgemeine Berechnungen",
    icon: Icons.calculate_rounded,
    color: Colors.teal,
    location: HomeRoute.generalcalc.path,
  ),
  ScreenCard(
    title: "Brau-Umrechnungen",
    icon: Icons.scale_rounded,
    color: Colors.amber,
    location: HomeRoute.brewcalc.path,
  ),
  ScreenCard(
    title: "Einheits-Umrechnungen",
    icon: Icons.format_underline_outlined,
    color: Colors.deepOrange,
    location: HomeRoute.unitcalc.path,
  ),
  ScreenCard(
    title: "Maische-Berechnungen",
    icon: Icons.grain_rounded,
    color: Colors.brown,
    location: HomeRoute.mashcalc.path,
  ),
];
