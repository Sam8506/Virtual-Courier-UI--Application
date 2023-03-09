import 'package:flutter/material.dart';
import 'package:virtual_courier/Pages/SignUp_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: 
         Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
               Row(
                children: [
                  MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
               onPressed: (){
                 Navigator.pushNamed(context, 'Login');
               },
               color: Colors.yellow[300],
               child: Text("Log in"),
             ),
              MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
               onPressed: (){
                 Navigator.pushNamed(context, 'SignUp');
               },
               color: Colors.yellow,
               child: Text("Sign up"),
             ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Welcome to Virtual Courier',
                style: TextStyle(
                  
                ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Form(child: SignUpForm()),
              SizedBox(
                height: 25,
              ),
             MaterialButton(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
               onPressed: (){},
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
               child: Text("Sign up With Google"),
             )
              
              ],
              
                
            ),
          ),
        ),
      
      
    );
  }
}