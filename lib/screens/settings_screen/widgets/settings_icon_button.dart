import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/router/routes.dart';

class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pushReplacement(MainRoute.settings.pathAbs);
        // if (context.canPop()) {
        //   dev.log("Route can pop. Replacing current route with new route.");
        //   context.pushReplacement(MainRoute.settings.pathAbs);
        // } else {
        //   dev.log("Route can NOT pop. Pushing new route.");
        //   context.push(MainRoute.settings.pathAbs);
        // }
      },
      icon: const Icon(Icons.settings_rounded),
    );
  }
}
