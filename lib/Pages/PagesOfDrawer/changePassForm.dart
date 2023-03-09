import 'package:flutter/material.dart';

class changePassForm extends StatelessWidget {
  const changePassForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Old Password",
            ),
          ),
          
          TextFormField(
            decoration: InputDecoration(
              labelText: "New Password",
            )
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Confirm New Password",
            )
          )
        ],
      ),
      );
  }
}