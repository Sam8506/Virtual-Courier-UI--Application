import 'package:flutter/material.dart';

class payMent extends StatelessWidget {
  const payMent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
         appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[300],
        title: Text('Select Preferred payment method',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
          ),
            onPressed: () {
              Navigator.pop(context);
              },
      ),
    ),

    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20 ,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Container(
              color: Colors.white,
              height: 400,
              width: 400,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('PAYMENT METHOD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.yellow[300],
                              height: 50,
                              width: 100,
                              child: Center(child: Text('Bank Card')),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              color: Colors.yellow[200],
                              height: 50,
                              width: 100,
                              child: Center(child: Text('UPI ID')),
                              
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              color: Colors.yellow[200],
                              height: 50,
                              width: 100,
                              child: Center(child: Text('COD')),
                            ),
                          ],
    
                        ),
    
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                      alignment: Alignment.topLeft,
                      child: Text('PAYMENT DETAILS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )),
                      Form(
        child: Column(
          children: [
           
            TextFormField(
              decoration: InputDecoration(
                labelText: "Card Holder Name",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Card Number",
              )
            ),
             Row(children: [
              Expanded(
                child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Date",
                ),
                        ),
              ),
              SizedBox(
                width: 10,
              ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "CVV",
                )
              ),
            ),
            ],
            ),
            
          ],
        ),
        )
                  ],
                ),
              )
            ),
          ),
          Padding(
                   padding: EdgeInsets.only(
                     top: 180
                   ),
                   child: MaterialButton(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0),
                       )),
                     onPressed: (){},
                     height: 45,
                     minWidth:350,
                     child: Text("Select Payment Method"),
                     color: Colors.yellow,
                              ),
                 ),
        ],
      ),
    ),
      );
  }
}