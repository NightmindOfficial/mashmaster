import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'dart:developer' as dev;

class StageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? _actions;

  const StageAppBar({super.key, List<Widget>? actions}) : _actions = actions;

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return AppBar(
      // forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: Text(
        _getTitleForCurrentRoute(context, t),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        ...?_actions,
        // IconButton( //FUTURE think about adding it to the UI
        // onPressed: () => Wiredash.of(context).show(),
        // icon: Icon(Icons.bug_report_rounded),
        // ),
      ],
    );
  }

  String _getTitleForCurrentRoute(BuildContext context, Translations t) {
    final GoRouter router = GoRouter.of(context);
    final String path = router.routeInformationProvider.value.uri.toString();
    // Remove the leading "/" and replace remaining "/" with "_"
    String cleanPath = path.startsWith("/") ? path.substring(1) : path;
    cleanPath = cleanPath.replaceAll("/", "_");
    dev.log("Trying to find a title for $path...");

    ///Handle "/" separately since it cannot be a translation key
    if (path == "/") {
      dev.log(
        'Returning ${t.app_title} as the title since we are on the homepage ("/")',
      );
      return t.app_title;
    }

    //Try fetching the translation using "routes.{path}" as the key
    dev.log(
      "The corresponding title found for the cleaned path $cleanPath is ${t['routes.$cleanPath']}",
    );
    return t['routes.$cleanPath'] ?? "Unknown Route!";
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
