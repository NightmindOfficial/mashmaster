import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mashmaster/helpers/social_media_icon.dart';
import 'package:mashmaster/helpers/url_handler.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:mashmaster/screens/settings_screen/widgets/settings_icon_button.dart';
import 'package:wiredash/wiredash.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final package = AppInfo.of(context).package;

    return Scaffold(
      appBar: StageAppBar(actions: [SettingsIconButton()]),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "For Feedback, Suggestions and other Comments",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Card(
                    color: Colors.blue[50],
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 32.0,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 54,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            foregroundImage: AssetImage(
                              "assets/images/profile.jpg",
                            ),
                            child: const Text("NO"),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                children: [
                                  ListTile(
                                    minTileHeight: 0,
                                    contentPadding: EdgeInsets.zero,
                                    title: Text("@NightmindOfficial"),
                                    subtitle: Text("App Developer"),
                                    isThreeLine: false,
                                    titleTextStyle: TextStyle(
                                      fontSize: 24,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onPrimaryContainer,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    subtitleTextStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueGrey,
                                      height: 1.5,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton.outlined(
                                        onPressed: () async {
                                          await Wiredash.trackEvent(
                                            'GitHub Profile Visit',
                                          );
                                          launchURL(
                                            'https://github.com/NightmindOfficial',
                                          );
                                        },
                                        icon: Icon(
                                          SocialMediaIcon.github_circled,
                                        ),
                                        style: IconButton.styleFrom(
                                          backgroundColor: Colors.blue[50],
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      IconButton.outlined(
                                        onPressed: () async {
                                          await Wiredash.trackEvent(
                                            'Sent E-Mail',
                                          );
                                          launchURL(
                                            'mailto:${dotenv.env['EMAIL']}?subject=Mashmaster User Feedback',
                                          );
                                        },
                                        icon: Icon(Icons.email_rounded),
                                        style: IconButton.styleFrom(
                                          backgroundColor: Colors.blue[50],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
