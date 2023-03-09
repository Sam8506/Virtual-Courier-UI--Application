import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: TextFormField(
              decoration: InputDecoration(
                labelText: "First name",
              ),
                      ),
            ),
            SizedBox(
              width: 10,
            ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
              )
            ),
          ),
          ],
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "email",
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
            )
          )
          
        ],
      ),
      );
  }
}