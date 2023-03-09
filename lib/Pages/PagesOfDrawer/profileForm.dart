import 'package:flutter/material.dart';

class profileForm extends StatelessWidget {
  const profileForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Name",
            ),
          ),
          
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email Address",
            )
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Phone Number",
            )
          )
        ],
      ),
      );
  }
}