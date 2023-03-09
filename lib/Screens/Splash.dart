import 'package:flutter/material.dart';
import 'package:virtual_courier/Screens/sP1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    _navigatetohome();
  }

  void _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => sP1()));
  }

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/image/sScreen.png",
      fit: BoxFit.cover
      ),
    );
  }
}