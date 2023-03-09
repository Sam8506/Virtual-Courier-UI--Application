import 'package:flutter/material.dart';
import 'package:virtual_courier/Pages/Login_Form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
             Row(
              children: [
                MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
             onPressed: (){
              //Navigator.pushNamed(context, 'p21');
             },
             color: Colors.yellow,
             child: Text("Log in"),
           ),
            MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
             onPressed: (){
               Navigator.pushNamed(context, 'SignUp');
             },
             color: Colors.yellow[300],
             child: Text("Sign up"),
           ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Log In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Welcome to Virtual Courier please fill the details below to Log in',
            style: TextStyle(
              
            ),
            ),
            Form(child: LoginForm()),
            SizedBox(
              height: 25,
            ),
           MaterialButton(
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
             onPressed: (){
               Navigator.pushNamed(context, 'p21');
             },
             color: Colors.yellow,
             minWidth:350,
             height: 45,
             child: Text("Lets Go!"),
           ),
           SizedBox(
             height: 20,
           ),
           MaterialButton(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(10.0),
               )),
             onPressed: (){},
             height: 45,
             minWidth:350,
             child: Text("Log in With Google"),
           )
            
            ],
            
      
          ),
        ),
      ),
      
    );
  }
}