import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/router/app_router.dart';
import 'package:mashmaster/theme/theme.dart';
import 'package:mashmaster/theme/util.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wiredash/wiredash.dart';
import 'dart:developer' as dev;

///*** FEATURE ROADMAP - Update 03/11/25***\\\
///
///[ ] Implement actual calculations
///   - high prio
///[ ] Theme Switcher
///   - high prio
///   - Dark mode looks wack af
///[ ] Language Pref Persister
///   - medium prio

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  final String? prefLang = await retrieveLocaleFromPrefs();

  if (prefLang != null) {
    dev.log(
      "[App Startup] Found lang flag in SharedPreferences. Setting language to $prefLang.",
    );
    LocaleSettings.setLocaleRaw(prefLang);
  } else {
    dev.log("[App Startup] No lang flag found. Using Device Locale.");

    LocaleSettings.useDeviceLocale();
  }

  //* APP STARTUP *\\
  runApp(
    AppInfo(
      data: await AppInfoData.get(),
      child: TranslationProvider(child: const ApplicationWidget()),
    ),
  );
}

Future<String?> retrieveLocaleFromPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('lang');
}

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({super.key});

  @override
  State<ApplicationWidget> createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  @override
  void initState() {
    super.initState();
    LocaleSettings.getLocaleStream().listen((event) {
      dev.log('Locale Changed: $event');
    });
  }

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
        onGenerateTitle: (context) => Translations.of(context).app_title,
        debugShowCheckedModeBanner: false,
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: [...GlobalMaterialLocalizations.delegates],
      ),
    );
  }
}
