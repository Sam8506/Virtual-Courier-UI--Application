import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  
  final imageUrl = "https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg";
  var selectedItem = '';

  Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios),
        color: Colors.black, onPressed: () { 
          Navigator.pop(context);
         },
        ),
        title: Text('Profile',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        actions:  [
            PopupMenuButton<int>(
              color: Colors.yellow[100],
                elevation: 30.0,
                onSelected: (item)=>onSelected(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Edit Profile"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Change Password"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Change Langauge"),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("Log Out"),
                    value: 4,
                  )
                ]
            )
          ],
        backgroundColor: Colors.yellow,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20
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
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0), 
              child: const Divider(
                thickness: 1.2,
                color: Colors.grey
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Align(               
                alignment: Alignment.topLeft,
                child: Text('Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
                ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Samir Patel',
                style: TextStyle(
                  letterSpacing: 0.5
                ),
                ),
              ),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
               child: const Divider(
                thickness: 1.2,
                color: Colors.grey
                         ),
             ),
             Padding(
               padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
               child: Align(
                alignment: Alignment.topLeft,
                child: Text('Email Address',
                
                style: TextStyle(
                   fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
                ),
                ),
                         ),
             ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('samirpatel8506@gmail.com',
                style: TextStyle(
                  letterSpacing: 0.5
                ),
                ),
              ),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
               child: const Divider(
                thickness: 1.2,
                color: Colors.grey
                         ),
             ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Align(  
                alignment: Alignment.topLeft,
                child: Text('Phone Number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
                ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('+91 9991112233',
                style: TextStyle(
                  letterSpacing: 0.5
                ),
                ),
              ),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(20, 10  , 20, 0),
               child: const Divider(
                thickness: 1.2,
                color: Colors.grey
                         ),
             ),
           
        ],
        
        
      )
    );
  }
}

onSelected(BuildContext context, int item) {
  switch(item){
    case 1:
      Navigator.pushNamed(context, 'editProfile');
      break;
    case 2:
      Navigator.pushNamed(context, 'chnagePassword');
      break;
    case 3:
      Navigator.pushNamed(context, 'changeLangauge');
      break;
    case 4:
      Navigator.pushNamed(context, 'Login');
      break;
  }
}
