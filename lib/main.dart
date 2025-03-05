import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mashmaster/router/app_router.dart';
import 'package:mashmaster/theme/theme.dart';
import 'package:mashmaster/theme/util.dart';

///*** FEATURE ROADMAP ***\\\
///
///[ ] Introduce Bug Tracker (-> Linum as Best Practice)
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
///[ ] Look into consistent font hierarchy
///   - medium prio
///[x] Splash Screen
///   - medium prio
///

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

    return MaterialApp.router(
      routerConfig: router,
      // debugShowCheckedModeBanner: false,
      title: 'MashMaster',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
    );
  }
}
