import 'package:flutter/material.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/widgets/screen_card.dart';

final List<ScreenCard> homeScreenCards = [
  ScreenCard(
    icon: Icons.clean_hands_rounded,
    title: "Reingungsmittel-Dosierer",
    subtitle: "z.B. PBW, StarSan, SaniClean, ChemiPro Oxi",
    color: Colors.blue,
    location: HomeRoute.dosagecalc.path,
  ),
  ScreenCard(
    title: "Allgemeine Berechnungen",
    subtitle:
        "Alkoholgehalt, Kalorien, Refraktometrie, Boil-Off, Hydrometer-Korrektur, Karbonisierung",
    icon: Icons.calculate_rounded,
    color: Colors.teal,
    location: HomeRoute.generalcalc.path,
  ),
  ScreenCard(
    title: "Brau-Umrechnungen",
    subtitle: "Extraktgehalt, Bierfarbe",
    icon: Icons.scale_rounded,
    color: Colors.amber,
    location: HomeRoute.brewcalc.path,
  ),
  ScreenCard(
    title: "Einheits-Umrechnungen",
    subtitle: "Volumen, Gewicht, Temperatur",
    icon: Icons.format_underline_outlined,
    color: Colors.deepOrange,
    location: HomeRoute.unitcalc.path,
  ),
  ScreenCard(
    title: "Maische-Berechnungen",
    subtitle: "Einmaisch- und Rasttemperatur, Maischekorbkalibrierung",
    icon: Icons.grain_rounded,
    color: Colors.brown,
    location: HomeRoute.mashcalc.path,
  ),
];
