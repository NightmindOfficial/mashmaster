import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mashmaster/router/app_router.dart';

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
    return MaterialApp.router(
      routerConfig: router,
      // debugShowCheckedModeBanner: false,
      title: 'MashMaster',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
    );
  }
}
