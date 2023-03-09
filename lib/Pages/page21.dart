import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:virtual_courier/widgets/drawerOfp21.dart';

const LatLng SOURCE_LOCATION = LatLng(42.7477863,-71.1699932);
const LatLng DEST_LOCATION = LatLng(42.743902,-71.1699932);
const double CAMARA_ZOOM = 16;
const double CAMARA_TILT = 80;
const double CAMARA_BEARING = 30;


class drawerP21 extends StatefulWidget {
  const drawerP21({ Key? key }) : super(key: key);

  @override
  State<drawerP21> createState() => _drawerP21State();
}

class _drawerP21State extends State<drawerP21> {
  
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();

  late LatLng currentLocation;
  late LatLng destinationLocation;
  @override
  void iniitState(){
    super.initState();
    this.setIntialLocation();
    this.setAndDestinationMarkerIcons();
  }

  void setAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.0),
     'assets/image/source_pin.png');

      destinationIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.0),
     'assets/image/destination_pin.png');
  }

  @override
  void setIntialLocation(){
    currentLocation = LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
    destinationLocation = LatLng(DEST_LOCATION.latitude,DEST_LOCATION.longitude);
  }

  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawerEnableOpenDragGesture: false,
      drawer: const drawerOfp2(),
        body: Stack(
          children: [
    
                Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child:  GoogleMap(
                    myLocationEnabled: true,
                    compassEnabled: false,
                    tiltGesturesEnabled: false,
                    markers: _markers,
                    initialCameraPosition: CameraPosition(
                    target:SOURCE_LOCATION,
                    zoom: CAMARA_ZOOM,
                    bearing: CAMARA_BEARING,
                    tilt: CAMARA_TILT,

                    ),
                     polylines: Set<Polyline>.of(polylines.values),
                    mapType: MapType.normal,
                    onMapCreated: (GoogleMapController controller){
                      _controller.complete(controller);
                      showPinsOnMap();
                    },
                    
                  ),
                      )
                  ],
                ),
            ),
            // SingleChildScrollView(
            //   child: Padding(
                
            //      padding: EdgeInsets.fromLTRB(0, 600, 0, 0),
            //     child: Container(
                            
            //       height: MediaQuery.of(context).size.height,
            //       width: MediaQuery.of(context).size.width,
            //       color: Colors.white,
            //       child: Expanded(
            //         child: Column(
            //           children: [
            //             Center(
            //               child: Padding(
            //                 padding: EdgeInsets.fromLTRB(175, 5, 175, 0),
            //                 child: Divider(
            //                   thickness: 3.8,
            //                   color: Colors.grey,
                              
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10,8,10,0),
            //               child: Form(
            //                 child: GestureDetector(
            //                   onTap: (){
            //                     AlertDialog(title: Text('ok'),);
            //                   },
            //                   child: TextFormField(
            //                     decoration: InputDecoration(
            //                        enabledBorder:  OutlineInputBorder(
            //                        borderSide:  BorderSide(color: Colors.black),
            //                     borderRadius: BorderRadius.circular(50),
            //                     ),
                                
            //                       prefixIcon: Icon(Icons.search, color: Colors.black,),
            //                     labelStyle: TextStyle(
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.bold
            //                     ),
            //                       label: Text('Enter Pickup')
            //                     ),
            //                   ),
            //                 )
            //                 ),
            //             ),
            //                 GestureDetector(
            //                 onTap: (){},
            //                 child: Card(
            //                    margin: EdgeInsets.fromLTRB(10,0,10,0),
            //                   child: ListTile(
            //                     leading: Icon(Icons.home),
            //                     title: Text('Home'),
                          
            //                     subtitle: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //         Text('Kileleshwa, Likoni Lane, Nirobi, Kenya'),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //                GestureDetector(
            //                 onTap: (){},
            //                 child: Card(
            //                    margin: EdgeInsets.fromLTRB(10,0,10,0),
            //                   child: ListTile(
            //                     leading: Icon(Icons.work),
            //                     title: Text('Work'),
                          
            //                     subtitle: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //         Text('Kileleshwa, Likoni Lane, Nirobi, Kenya'),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               GestureDetector(
            //                 onTap: (){},
            //                 child: Card(
            //                    margin: EdgeInsets.fromLTRB(10,0,10,0),
            //                   child: ListTile(
            //                     leading: Icon(Icons.timer_rounded),
            //                     title: Text('Kileleshwa'),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //          padding: EdgeInsets.only(
            //            top: 350
            //          ),
            //          child: MaterialButton(
            //            shape: RoundedRectangleBorder(
            //              borderRadius: BorderRadius.all(Radius.circular(30.0),
            //              )),
            //            onPressed: (){},
            //            height: 45,
            //            minWidth:350,
            //            child: Text("DONE"),
            //            color: Colors.yellow,
            //                     ),
            //                        ),                        
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
              
          ],
        ),  
        
    );
   
  }
   void showPinsOnMap(){
      setState(() {
        _markers.add(Marker(markerId: MarkerId('source_pin'),
      position: currentLocation,
      icon: sourceIcon
      ));

      _markers.add(Marker(markerId: MarkerId('destination_pin'),
      position: destinationLocation,
      icon: destinationIcon
      ));
      });
    }
}