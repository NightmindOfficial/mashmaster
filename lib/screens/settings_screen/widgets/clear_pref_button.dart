import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/screens/settings_screen/widgets/delete_data_dialog.dart';

class ClearPrefButton extends StatelessWidget {
  const ClearPrefButton({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return ListTile(
      title: Text(t.settings_screen.delete_app_data.title),
      subtitle: Text(t.settings_screen.delete_app_data.content),
      leading: Icon(Icons.cleaning_services_rounded),
      trailing: OutlinedButton.icon(
        onPressed: () async {
          showDialog<void>(
            barrierDismissible: false,
            barrierColor: Color.fromARGB(150, 0, 0, 0),
            context: context,
            builder: (_) => DeleteDataDialog(),
          );
        },
        label: Text(t.settings_screen.delete_app_data.button_label),
        style: OutlinedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.error,
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
          overlayColor: Theme.of(context).colorScheme.onErrorContainer,
          side: BorderSide(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }
}
