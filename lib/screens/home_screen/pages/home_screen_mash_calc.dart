import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:wiredash/wiredash.dart';

class HomeScreenMashCalc extends StatelessWidget {
  const HomeScreenMashCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StageAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.generic.placeholder_label,
              style: TextStyle(height: 3, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed:
                  () => Wiredash.of(context).show(
                    inheritMaterialTheme: true,
                    options: WiredashFeedbackOptions(
                      screenshot: ScreenshotPrompt.hidden,
                      collectMetaData:
                          (metaData) =>
                              metaData..custom['feature'] = "Mash Calc",
                      labels: [
                        Label(
                          id: 'label-dq5xiouftc',
                          title: 'Demand Ping',
                          hidden: true,
                        ),
                      ],
                    ),
                  ),
              child: Text(t.generic.cta_label, style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
