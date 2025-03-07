import 'package:flutter/material.dart';

enum AppDestination { home, contact }

class Destination {
  final IconData icon;
  final IconData? selectedIcon;

  const Destination({required this.icon, selectedIcon}) : selectedIcon = icon;
}

final Map<AppDestination, Destination> mainDestinations = {
  AppDestination.home: Destination(
    selectedIcon: Icons.home_rounded,
    icon: Icons.home_outlined,
  ),
  AppDestination.contact: Destination(
    selectedIcon: Icons.info_rounded,
    icon: Icons.info_outline_rounded,
  ),
};
