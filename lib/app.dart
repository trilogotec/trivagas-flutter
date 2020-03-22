import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
