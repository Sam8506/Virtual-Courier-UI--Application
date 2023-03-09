import 'package:flutter/material.dart';
import 'package:virtual_courier/widgets/drawerOfp21.dart';

class order extends StatelessWidget {
  const order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  drawerOfp2(),
       appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text('Your Orders',
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
    body: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'dorder');
          },
          child: Card(
             margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text('Haile Selassie Avenue,Nairobi'),
        
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('May 3,2021 12:25:31'),
                  Text('YOU CANCELLED',
                  style: TextStyle(
                    color: Colors.red
                  ),
                  )
                ],
              ),
            ),
          ),
        ),
         SizedBox(
          height: 10,
        ),
        Card(

          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text('Haile Selassie Avenue,Nairobi'),
            onTap: (){
              Navigator.pushNamed(context, 'dorder');
            },
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('May 3,2021 12:25:31'),
                Text('COMPLETED',
                style: TextStyle(
                  color: Colors.green
                ),
                )
              ],
            ),
          ),
        ),
         SizedBox(
          height: 10,
        ),

        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text('Haile Selassie Avenue,Nairobi'),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('May 3,2021 12:25:31'),
                Text('COMPLETED',
                style: TextStyle(
                  color: Colors.green
                ),
                )
              ],
            ),
          ),
        ),
         SizedBox(
          height: 10,
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text('Hail Selassie Avenue, Nairobi'),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('May 3,2021 12:25:31'),
                Text('YOU CANCELLED',
                style: TextStyle(
                  color: Colors.red
                ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text('Kikuyu Road, Mombasa'),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('May 1,2021 10:12:31'),
                Text('COMPLETED',
                style: TextStyle(
                  color: Colors.green
                ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}