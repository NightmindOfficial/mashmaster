import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mashmaster/router/app_router.dart';
import 'package:mashmaster/theme/theme.dart';
import 'package:mashmaster/theme/util.dart';
import 'package:wiredash/wiredash.dart';

///*** FEATURE ROADMAP ***\\\
///
///[x] Introduce Bug Tracker (-> Linum as Best Practice)
///   - medium prio
///   - pretty easy snacc
///[x] Finalize App Routing System
///   - high prio
///   - utterly complicated for such a simple app
///[ ] Localization
///   - medium prio
///   - don't know what's best practice nowadays
///[ ] Implement actual calculations
///   - high prio
///[ ] Privacy Policy and Stuff
///   - medium prio
///   - needs to be done before publication
///[x] Look into consistent font hierarchy
///   - medium prio
///[x] Splash Screen
///   - medium prio
///[x] Logo Icon
///   - medium prio
///   - easy snacc

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  runApp(
    AppInfo(data: await AppInfoData.get(), child: const ApplicationWidget()),
  );
}

class ApplicationWidget extends StatelessWidget {
  const ApplicationWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Brightness brightness =
        View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Outfit", "Outfit");

    MaterialTheme theme = MaterialTheme(textTheme);

    return Wiredash(
      projectId: dotenv.env['WIREDASH_PROJECT_ID'] ?? 'error',
      secret: dotenv.env['WIREDASH_SECRET'] ?? 'error',
      feedbackOptions: const WiredashFeedbackOptions(
        labels: [
          Label(id: 'label-kpy2h5jgw8', title: 'Bug'),
          Label(id: 'label-xa70lpxi42', title: 'Improvement'),
          Label(id: 'label-bqpi3ygbo5', title: 'Praise'),
        ],
      ),
      child: MaterialApp.router(
        routerConfig: router,
        // debugShowCheckedModeBanner: false,
        title: 'MashMaster',
        debugShowCheckedModeBanner: false,
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      ),
    );
  }
}
