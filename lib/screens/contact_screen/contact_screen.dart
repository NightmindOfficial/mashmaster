import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final package = AppInfo.of(context).package;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("For Feedback, Suggestions and other Comments"),
                Card(
                  color: Colors.blue[50],
                  elevation: 2,
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text("NightmindOfficial"),
                          Text("Developer"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Mashmaster v${package.versionWithoutBuild} Build ${package.buildNumber}. Made with ♡ in Vallendar.",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
