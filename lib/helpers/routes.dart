import 'package:flutter/material.dart';
import 'package:mashmaster/screens/contact_screen.dart';
import 'package:mashmaster/screens/home_screen.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/': (context) => HomeScreen(),
  '/contact': (context) => ContactScreen(),
};
