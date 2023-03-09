import 'package:flutter/material.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/profileForm.dart';

class editProfile extends StatelessWidget {
  const editProfile({Key? key}) : super(key: key);
  final imageUrl = "https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text('Edit Profile',
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
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(
                top: 30
              ),
              child: SizedBox(
              height: 80.0,
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
              ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: const Divider(
                thickness: 1.2,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: profileForm()),
               Padding(
                 padding: EdgeInsets.only(
                   top: 280
                 ),
                 child: MaterialButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30.0),
                     )),
                   onPressed: (){},
                   height: 45,
                   minWidth:350,
                   child: Text("Sumbit",
                   style: TextStyle(
                     fontWeight: FontWeight.bold
                   ),
                   ),
                   color: Colors.yellow,
                            ),
               ),
        ],
      ),
    ),
    );
  }
}