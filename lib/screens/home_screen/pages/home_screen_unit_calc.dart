import 'package:flutter/material.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:wiredash/wiredash.dart';

class HomeScreenUnitCalc extends StatelessWidget {
  const HomeScreenUnitCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
                        (metaData) => metaData..custom['feature'] = "Unit Calc",
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
    );
  }
}
