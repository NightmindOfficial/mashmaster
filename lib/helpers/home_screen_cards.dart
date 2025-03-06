import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/router/routes.dart';
import 'package:mashmaster/widgets/screen_card.dart';

final List<ScreenCard> homeScreenCards = [
  ScreenCard(
    icon: Icons.clean_hands_rounded,
    title: t.home_screen_cards.dosage_calc.title,
    subtitle: t.home_screen_cards.dosage_calc.subtitle,
    color: Colors.blue,
    location: HomeRoute.dosagecalc.path,
  ),
  ScreenCard(
    title: t.home_screen_cards.general_calc.title,
    subtitle: t.home_screen_cards.general_calc.subtitle,
    icon: Icons.calculate_rounded,
    color: Colors.teal,
    location: HomeRoute.generalcalc.path,
  ),
  ScreenCard(
    title: t.home_screen_cards.brew_calc.title,
    subtitle: t.home_screen_cards.brew_calc.subtitle,
    icon: Icons.scale_rounded,
    color: Colors.amber,
    location: HomeRoute.brewcalc.path,
  ),
  ScreenCard(
    title: t.home_screen_cards.unit_calc.title,
    subtitle: t.home_screen_cards.unit_calc.subtitle,
    icon: Icons.format_underline_outlined,
    color: Colors.deepOrange,
    location: HomeRoute.unitcalc.path,
  ),
  ScreenCard(
    title: t.home_screen_cards.mash_calc.title,
    subtitle: t.home_screen_cards.mash_calc.subtitle,
    icon: Icons.grain_rounded,
    color: Colors.brown,
    location: HomeRoute.mashcalc.path,
  ),
];
