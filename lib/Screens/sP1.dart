import 'package:flutter/material.dart';

class sP1 extends StatefulWidget {
  const sP1({ Key? key }) : super(key: key);

  @override
  State<sP1> createState() => _sP1State();
}

class _sP1State extends State<sP1> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,
        color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pushNamed(context, 'Login');
            },
           child: Text('Skip',
           style: TextStyle(
             color: Colors.black,
             fontSize: 16,
             letterSpacing: 0.8,
             fontWeight: FontWeight.bold
           ),
           )
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/sP1.png"),
            SizedBox(
              height: 20.0,
            ),

            Text('Easy pickup & Delivery',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0
            ),
            ),

            SizedBox(
              height: 10.0,
            ),

              Text(
                'On-demand pickup is available along with\n easy delivery powered by Akhsaak to\n avoid any hassel',
                style: TextStyle(
                  
                ),
                textAlign: TextAlign.center,
                ),
            
             SizedBox(
               height: 70.0,
             ),

             InkWell(
              onTap: () {
                setState(() {
                  changeButton = true;
                });
                Navigator.pushNamed(context, 'sP2');
              },
              child: AnimatedContainer(
                  duration: Duration(seconds: 200),
                  curve: Curves.easeOut,
                  child: changeButton
                      ? CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.yellow,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundColor: Colors.white,
                            child: Material(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(50),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundColor: Colors.white,
                            child: Material(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(50),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )),
            )

            
      
          ],
        ),
      ),
    );
  }
}