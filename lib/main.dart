import 'package:flutter/material.dart';
import 'package:mashmaster/stage.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MashMaster',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: const Banner(
        message: "DEV",
        textStyle: TextStyle(fontSize: 16),
        location: BannerLocation.topEnd,
        child: Stage(),
      ),
    );
  }
}
