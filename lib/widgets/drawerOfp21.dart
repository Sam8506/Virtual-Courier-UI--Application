import 'package:flutter/material.dart';

class drawerOfp2 extends StatelessWidget {
  const drawerOfp2({ Key? key }) : super(key: key);
  final imageUrl = "https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget> [
            Container(
              child: Row(
                children: [
                  Container(
                     padding: EdgeInsets.only(
                     left: 10,
                     top: 50
                     ),
                     width: 50.0,

                    child: CircleAvatar(
                      backgroundImage:NetworkImage(imageUrl) ,
                    ),
                    ),
                    Column(
                      children: [
                       Container(
                        padding: EdgeInsets.fromLTRB(12, 35, 0, 0),
                        child: Text(
                          'Samir Patel',
                        style: TextStyle(
                          letterSpacing: 0.7,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        )
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text('View Profile',
                          style: TextStyle(
                          letterSpacing: 0.7,
                        ),
                          ),
                        ),
                      ]
                    ),  
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 4.0,
            ),
            Column(
              children: [
               Padding(padding: EdgeInsets.only(left: 22)),
                ListTile(
              leading: Icon(
                 Icons.person_rounded,
                  color: Colors.black,
               ),
              title: const Text('Profile',
              style: TextStyle(
                fontSize: 16
              ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'profile');
              },
            ),
            ListTile(
              leading: Icon(
                 Icons.payment_outlined,
                  color: Colors.black,
               ),
              title: const Text('Payments',
              style: TextStyle(
                fontSize: 16
              ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'payment');
              },
            
            ),
            ListTile(
              leading: Icon(
                 Icons.data_usage_rounded,
                  color: Colors.black,
               ),
              title: const Text('Orders',
              style: TextStyle(
                fontSize: 16
              ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'order');
              },
             ),
             ListTile(
               leading: Icon(
                 Icons.percent_outlined,
                 color: Colors.black,
               ),
              title: const Text('Promotions',
              style: TextStyle(
                fontSize: 16
              ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'promotions');
              },
             ),
             ListTile(
               leading: Icon(
                 Icons.help_rounded,
                  color: Colors.black,
               ),
              title: const Text('Help',
              style: TextStyle(
                fontSize: 16
              ),
              ),
              onTap: () {
                
              },
             ),
             SizedBox(
               height: 225,
             ),
             Padding(
               padding: EdgeInsets.all(10),
               child: MaterialButton(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(30.0),
                 )),
               onPressed: (){},
               height: 45,
               minWidth:350,
               child: Text("Sign Up to Drive"),
               color: Colors.yellow,
                        ),
             )
              ],
            )
          ],
        ),
      );
  }
}