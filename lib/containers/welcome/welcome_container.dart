import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trivagas_flutter/containers/welcome/welcome_screen.dart';

class WelcomeContainer extends StatefulWidget {
  @override
  _WelcomeContainerState createState() => _WelcomeContainerState();
}

class _WelcomeContainerState extends State<WelcomeContainer> {
  void navigateToRegister() {
    Modular.to.pushNamed('/register');
  }

  void navigateToLogin() {
    Modular.to.pushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeScreen(
      navigateToLogin: navigateToLogin,
      navigateToRegister: navigateToRegister,
    );
  }
}
