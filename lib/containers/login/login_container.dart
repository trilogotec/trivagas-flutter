import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_screen.dart';

class LoginContainer extends StatefulWidget {
  @override
  _LoginContainerState createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  void navigateToOpportunities() {
    Modular.to.pushNamed("/opportunities");
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreen(navigateToOpportunities: navigateToOpportunities);
  }
}
