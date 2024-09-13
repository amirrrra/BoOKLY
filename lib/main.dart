import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants.gilroy,
          ),
        ),
      ),
    );
  }
}
