import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/helpers/pref_service.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';

class DeleteDataDialog extends StatelessWidget {
  const DeleteDataDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return AlertDialog(
      title: Text(t.settings_screen.delete_app_data.alert_dialog.title),
      content: Text(t.settings_screen.delete_app_data.alert_dialog.content),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            t.settings_screen.delete_app_data.alert_dialog.abort_label,
          ),
        ),
        TextButton(
          onPressed: () async {
            final status = await clearAllPrefs();
            if (status && context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(t.settings_screen.delete_app_data.snackbar),
                ),
              );
              context.pop();
            }
          },
          child: Text(
            t.settings_screen.delete_app_data.alert_dialog.execute_label,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        ),
      ],
    );
  }
}
