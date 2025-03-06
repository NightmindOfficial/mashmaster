import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';

class Destination {
  final String label;
  final IconData icon;
  final IconData? selectedIcon;

  const Destination({required this.label, required this.icon, selectedIcon})
    : selectedIcon = icon;
}

final List<Destination> mainDestinations = [
  Destination(
    selectedIcon: Icons.home_rounded,
    icon: Icons.home_outlined,
    label: t.navbar.home,
  ),
  Destination(
    selectedIcon: Icons.info_rounded,
    icon: Icons.info_outline_rounded,
    label: t.navbar.contact,
  ),
];
