import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mashmaster/helpers/language_service.dart';
import 'package:mashmaster/i18n/generated/translations.g.dart';
import 'package:mashmaster/provider/theme_notifier.dart';
import 'package:mashmaster/router/app_router.dart';
import 'package:mashmaster/theme/theme.dart';
import 'package:mashmaster/theme/util.dart';
import 'package:provider/provider.dart';
import 'package:wiredash/wiredash.dart';
import 'dart:developer' as dev;

///*** FEATURE ROADMAP - Update 03/11/25***\\\
///
///[ ] Implement actual calculations
///   - high prio
///[x] Theme Switcher
///   - high prio
///   - Dark mode looks wack af
///[ ] Language Pref Persister
///   - medium prio

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await setLanguageFromPrefs();

  //* APP STARTUP *\\
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier()),
      ],
      child: AppInfo(
        data: await AppInfoData.get(),
        child: TranslationProvider(child: const ApplicationWidget()),
      ),
    ),
  );
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
    dev.log("Main Build");
    // final Brightness brightness =
    // View.of(context).platformDispatcher.platformBrightness;
    final ThemeNotifier themeNotifier = context.watch<ThemeNotifier>();

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
        // theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        theme: theme.light(),
        darkTheme: theme.dark(),
        themeMode: themeNotifier.mode,
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: [...GlobalMaterialLocalizations.delegates],
      ),
    );
  }
}
