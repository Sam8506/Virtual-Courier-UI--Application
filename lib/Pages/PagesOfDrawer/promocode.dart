import 'package:flutter/material.dart';

class promoCode extends StatelessWidget {
  const promoCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text('Promotions',
        style: TextStyle(
          color: Colors.black
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
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
      
          children: [
            SizedBox(
              height: 15,
            ),
            Form(
              child: TextFormField(
                textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  labelText: 'Promo Code',
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 232, 212, 32)),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Enter the code and it will be applied to your next order'),
              SizedBox(
                height: 500,
              ),
              Padding(
                   padding: EdgeInsets.all(10),
                   child: MaterialButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30.0),
                     )),
                   onPressed: (){
                    
                   },
                   height: 45,
                   minWidth:350,
                   child: Text("Apply"),
                   color: Colors.yellow,
                            ),
                 )
          ],
        ),
      ),
    ),
      );
  }
}