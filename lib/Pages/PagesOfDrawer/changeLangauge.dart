import 'package:flutter/material.dart';
import 'package:virtual_courier/widgets/dropDownButton.dart';

class changeLangauge extends StatefulWidget {
  const changeLangauge({Key? key}):super(key: key);

  
  @override
  State<changeLangauge> createState() => _changeLangaugeState();
}

class _changeLangaugeState extends State<changeLangauge> {
  

  String dropdownvalue = 'English';

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          elevation: 0.0,
          title: Text('Change Langauge',
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
  
        body: 
          Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.fromLTRB(2,8,0,0),
              child: Text('Select Langauge',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            dropDownButton1(),
          ],
        ),
      
      );
      
  }
}