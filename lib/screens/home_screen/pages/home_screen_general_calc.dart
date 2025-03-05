import 'package:flutter/material.dart';
import 'package:mashmaster/layout/stage_app_bar.dart';
import 'package:wiredash/wiredash.dart';

class HomeScreenGeneralCalc extends StatelessWidget {
  const HomeScreenGeneralCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StageAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This feature has not been finalized yet. Please come back later!",
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
                              metaData..custom['feature'] = "General Calc",
                      labels: [
                        Label(
                          id: 'label-dq5xiouftc',
                          title: 'Demand Ping',
                          hidden: true,
                        ),
                      ],
                    ),
                  ),
              child: Text(
                "I want this feature sooner!",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
