import 'package:flutter/material.dart';
import 'package:trivagas_flutter/widgets/trivagas_button.dart';
import 'package:trivagas_flutter/widgets/trivagas_title.dart';

class WelcomeScreen extends StatelessWidget {
  final Function navigateToRegister;
  final Function navigateToLogin;

  WelcomeScreen({
    @required this.navigateToRegister,
    @required this.navigateToLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TrivagasTitle(
                "Welcome Trivagas",
                size: TrivagasTitleSize.h1,
              ),
              SizedBox(height: 20),
              TrivagasButton(
                "Login",
                onPressed: navigateToLogin,
              ),
              SizedBox(height: 10),
              TrivagasButton(
                "Register",
                onPressed: navigateToRegister,
                themeColor: TrivagasButtonColor.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
