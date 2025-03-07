import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/router/routes.dart';
import 'dart:developer' as dev;

// Get current route path
String currentPath(BuildContext context) {
  final GoRouter router = GoRouter.of(context);
  final currentPath = router.routeInformationProvider.value.uri.toString();
  return currentPath;
}

bool showLeadingBackButton(BuildContext context) {
  final String actualPath = currentPath(context);
  dev.log(actualPath);
  return !MainRoute.values.map((route) => route.path).contains(actualPath);
}
