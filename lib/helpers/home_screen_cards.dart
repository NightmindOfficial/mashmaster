import 'package:flutter/material.dart';
import 'package:mashmaster/widgets/screen_card.dart';

final List<ScreenCard> homeScreenCards = [
  ScreenCard(
    icon: Icons.clean_hands_rounded,
    title: "Reingungsmittel-Dosierer",
    color: Colors.blue,
    routeName: '/homescreen/dosage-calc',
  ),
  ScreenCard(
    title: "Allgemeine Berechnungen",
    icon: Icons.calculate_rounded,
    color: Colors.teal,
    routeName: '/homescreen/general-calc',
  ),
  ScreenCard(
    title: "Brau-Umrechnungen",
    icon: Icons.scale_rounded,
    color: Colors.amber,
    routeName: '/homescreen/brew-calc',
  ),
  ScreenCard(
    title: "Einheits-Umrechnungen",
    icon: Icons.format_underline_outlined,
    color: Colors.deepOrange,
    routeName: '/homescreen/unit-calc',
  ),
  ScreenCard(
    title: "Maische-Berechnungen",
    icon: Icons.grain_rounded,
    color: Colors.brown,
    routeName: '/homescreen/mash-calc',
  ),
];
