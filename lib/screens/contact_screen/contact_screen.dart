import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mashmaster/helpers/social_media_icon.dart';
import 'package:mashmaster/helpers/url_handler.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:mashmaster/screens/settings_screen/widgets/settings_icon_button.dart';
import 'package:wiredash/wiredash.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final package = AppInfo.of(context).package;
    final t = Translations.of(context);

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
                    t.contact_screen.label_one,
                    style: TextStyle(fontSize: 16, height: 3),
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
                                    title: Text(t.contact_screen.dev_card.name),
                                    subtitle: Text(
                                      t.contact_screen.dev_card.title,
                                    ),
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
                  Divider(),
                  Text(
                    t.contact_screen.bug_report.label,
                    style: TextStyle(fontSize: 16, height: 3),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.bug_report_rounded),
                    onPressed:
                        () => Wiredash.of(
                          context,
                        ).show(inheritMaterialTheme: true),
                    label: Text(
                      t.contact_screen.bug_report.button_label,
                      style: TextStyle(fontSize: 18),
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
                    "Mashmaster v${package.versionWithoutBuild} Build ${package.buildNumber}. ${t.contact_screen.version_label}",
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
