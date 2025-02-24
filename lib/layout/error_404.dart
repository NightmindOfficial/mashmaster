import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashmaster/router/routes.dart';

class Error404Screen extends StatelessWidget {
  const Error404Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("We're sorry, the app encountered an error."),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go(MainRoute.home.path);
              },
              child: Text("Restart App"),
            ),
          ],
        ),
      ),
    );
  }
}
