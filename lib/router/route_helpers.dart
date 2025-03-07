import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Get current route path
String currentPath(BuildContext context) {
  final GoRouter router = GoRouter.of(context);
  final currentPath = router.routeInformationProvider.value.uri.toString();
  return currentPath;
}
