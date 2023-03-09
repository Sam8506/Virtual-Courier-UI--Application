import 'package:flutter/material.dart';

class promotions extends StatefulWidget {
  const promotions({Key? key}) : super(key: key);

  @override
  State<promotions> createState() => _promotionsState();
}

class _promotionsState extends State<promotions> {
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
    
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
            child: TextFormField(
              decoration: InputDecoration(
                label:Row(
              children: [
                Icon(Icons.percent_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Enter Promo code')
              ],
            ),
              ),
            ) 
            ),
            SizedBox(
              height: 10,
            ),
            
            SizedBox(
              height: 10,
            ),
             Divider(
              thickness: 6.2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Your Promotions',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[300],
              height: 80,
              width: 400,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Column(
                  children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('25% disount for 10 Orders',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Maximum discount Ksh 200',
                    ),
                  ),
                  const Divider(
                      thickness: 1.2,
                    ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('10 hours Left'))
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[300],
              height: 80,
              width: 400,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Column(
                  children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('20% disount for 8 Orders',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Maximum discount Ksh 200',
                    ),
                  ),
                  const Divider(
                      thickness: 1.2,
                    ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('6 hours Left'))
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[300],
              height: 80,
              width: 400,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Column(
                  children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('16% disount for 4 Orders',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Maximum discount Ksh 180',
                    ),
                  ),
                  const Divider(
                      thickness: 1.2,
                    ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('2 hours Left'))
                ]),
              ),
            ),
            SizedBox(
              height: 180,
            ),
             Padding(
                 padding: EdgeInsets.all(10),
                 child: MaterialButton(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(30.0),
                   )),
                 onPressed: (){
                   Navigator.pushNamed(context, 'promocode');
                 },
                 height: 45,
                 minWidth:350,
                 child: Text("Redeem New Promo Code"),
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