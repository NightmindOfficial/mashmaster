import 'package:flutter/material.dart';
import 'package:mashmaster/router/route_helpers.dart';

class StageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? _actions;

  const StageAppBar({super.key, List<Widget>? actions}) : _actions = actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // forceMaterialTransparency: true,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: Text(
        getTitleForCurrentRoute(context),
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

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
