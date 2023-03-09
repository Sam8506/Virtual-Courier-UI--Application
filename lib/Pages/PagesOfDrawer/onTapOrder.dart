import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class dOrder extends StatefulWidget {
  const dOrder({Key? key}) : super(key: key);

  @override
  State<dOrder> createState() => _dOrderState();
}


class _dOrderState extends State<dOrder> {
  final imageUrl = "https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg";
  Widget buildDashedLine() => Center(
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 32,
        dashColor: Colors.black,
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        Padding(
          padding: const EdgeInsets.fromLTRB(20,2,20,0),
          child: Column(
            children: [
              SizedBox(
                height: 14,
                ),
              Row(
                children: [
                  Icon(
                    Icons.trip_origin,
                    size: 18,
                    color: Colors
                        .yellow.shade700,
                  ),
                  Container(
                                                                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,0,0,0),
                  child: Column(
                                                                
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pick Up Location'),
                      Text('Haile Selassie Avenue')
                    ],
                  ),
                ),
              ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 335, 0),
                child: buildDashedLine(),
              ),
              Row(
                children: [
                  Icon(
                Icons.location_on,
                size: 20,
                color:
                    Colors.blue.shade700,
              ),
              Container(
                                                                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,0,0,0),
                  child: Column(
                                                                
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Destination'),
                      Text('Kikuyu Road')
                    ],
                  ),
                ),
              ),

                ],
              ),
                                                          
              SizedBox(
                height: 5,
              ),
            ],
          ),
                                            
        ),
        SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 5.2,
          //color: Colors.grey,
        ),
        Padding(
          
          padding: const EdgeInsets.fromLTRB(25,0,25,0),
          child: Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your Order was Delivered By',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                radius: 20,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Samir Patel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text('Ksh 150',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text('Your Rider',
                        style: TextStyle(
                          fontSize: 12
                        ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text('Cash',
                        style: TextStyle(
                          fontSize: 12
                        ),
                        )
                      ],
                    ),
                  ],
                ),
                
                    ],
                  ),
                   Divider(
                     thickness: 5.2,
                  ),
                  Row(
                      children: [
                        Text('Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        Text('Cash',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    
               Padding(
                 padding: EdgeInsets.only(
                   top: 360
                 ),
                 child: MaterialButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30.0),
                     )),
                   onPressed: (){},
                   height: 45,
                   minWidth:350,
                   child: Text("Get Help"),
                   color: Colors.yellow,
                            ),
               ),
                ],
              )
              ),
            
          ),
        )
      ],
    ),

    );
  }
}