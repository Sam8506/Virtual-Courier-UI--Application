import 'package:flutter/material.dart';

class dropDownButton1 extends StatefulWidget {
  const dropDownButton1({Key? key}) : super(key: key);

  @override
  State<dropDownButton1> createState() => _dropDownButton1State();
}

class _dropDownButton1State extends State<dropDownButton1> {
  //var items = ['English', 'Hindi', 'German', 'French'];
  String dropdownValue = 'English';
  @override
  Widget build(BuildContext context) {
     return Column(
       children: [
         DecoratedBox(
  decoration: BoxDecoration( 
     color:Colors.transparent, //background color of dropdown button
     border: Border.all(color: Colors.yellow, width:3), //border of dropdown button
     borderRadius: BorderRadius.circular(50), //border raiuds of dropdown button
     boxShadow: <BoxShadow>[ //apply shadow on Dropdown button
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                blurRadius: 5) //blur radius of shadow
          ]
  ),
  
  child:Padding(
    padding: EdgeInsets.only(left:30, right:30),
     child:DropdownButton(
      value: "United Kingdom",
      items: [ //add items in the dropdown 
        DropdownMenuItem(
          child: Text("English"),
          value: "United Kingdom",
        ), 
        DropdownMenuItem(
          child: Text("Hindi"),
          value: "Canada"
        ),
        DropdownMenuItem(
          child: Text("German"),
          value: "Russia",
        ),
        DropdownMenuItem(
          child: Text("French"),
          value: "Russia",
        ),
        DropdownMenuItem(
          child: Text("Spanish"),
          value: "Russia",
        )

      ],
      onChanged: (value){ //get value when changed
          print("You have selected $value");
      },
      icon: Padding( //Icon at tail, arrow bottom is default icon
        padding: EdgeInsets.only(left:20),
        child:Icon(Icons.arrow_circle_down_sharp)
      ), 
      iconEnabledColor: Colors.black, //Icon color
      style: TextStyle(  //te
         color: Colors.black, 
         fontSize: 18 
      ),
      
      dropdownColor: Colors.yellow[100], //dropdown background color
      underline: Container(), //remove underline
      isExpanded: true, //make true to make width 100%
     )
  )
)
       ],
     );
  
  }
}