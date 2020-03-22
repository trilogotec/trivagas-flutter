import 'package:flutter/material.dart';
import 'package:trivagas_flutter/widgets/trivagas_appbar.dart';
import 'package:trivagas_flutter/widgets/trivagas_button.dart';
import 'package:trivagas_flutter/widgets/trivagas_text_field.dart';

class LoginScreen extends StatelessWidget {
  final Function navigateToOpportunities;

  LoginScreen({
    @required this.navigateToOpportunities,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TrivagasAppBar(
        title: "Login",
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TrivagasTextField(
                label: "Email",
                hint: "Ex.: jhon@example.com",
              ),
              SizedBox(height: 15),
              TrivagasTextField(label: "Password"),
              SizedBox(height: 20),
              TrivagasButton(
                "Login",
                onPressed: navigateToOpportunities,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
