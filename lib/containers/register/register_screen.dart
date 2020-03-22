import 'package:flutter/material.dart';
import 'package:trivagas_flutter/widgets/trivagas_appbar.dart';
import 'package:trivagas_flutter/widgets/trivagas_button.dart';
import 'package:trivagas_flutter/widgets/trivagas_text_field.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TrivagasAppBar(title: "Register"),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            TrivagasTextField(
              label: "Name",
              hint: "Ex.: Jhon, Ana",
            ),
            SizedBox(height: 15),
            TrivagasTextField(
              label: "Email",
              hint: "Ex.: jhon@example.com",
            ),
            SizedBox(height: 15),
            TrivagasTextField(
              label: "Password",
              hint: "",
            ),
            SizedBox(height: 25),
            TrivagasButton(
              "Register",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
