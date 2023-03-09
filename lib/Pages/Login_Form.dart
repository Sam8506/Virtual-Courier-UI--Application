import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "email",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
            )
          )
        ],
      ),
      );
  }
}