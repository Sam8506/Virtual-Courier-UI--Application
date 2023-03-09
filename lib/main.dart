import 'package:flutter/material.dart';
import 'package:virtual_courier/Pages/LoginPage.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/ChangePassword.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/Profile.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/changeLangauge.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/editProfile.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/onTapOrder.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/order.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/payment.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/promocode.dart';
import 'package:virtual_courier/Pages/PagesOfDrawer/promotions.dart';
import 'package:virtual_courier/Pages/SignUpPage.dart';
import 'package:virtual_courier/Pages/page21.dart';
import 'package:virtual_courier/Screens/sP1.dart';
import 'package:virtual_courier/Screens/sP2.dart';
import 'package:virtual_courier/Screens/sP3.dart';
import 'package:virtual_courier/Screens/Splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Virtual Courier",
      debugShowCheckedModeBanner: false,
      home:const  LoginPage(),
      initialRoute: '/Splash',
      routes: {
        '/Splash':(context) =>const  SplashScreen(),
        'Login':(context) =>const  LoginPage(),
        'SignUp':(context) =>  const SignUp(),
        'sP1':(context) =>const sP1(),
        'sP2':(context) => const sP2(),
        'sP3':(context) => const sP3(),
        'p21':(context) => const drawerP21(),
        'profile':(context) =>Profile(),
        'editProfile':(context) =>const editProfile(),
        'chnagePassword':(context) =>const changePassword(),
        'changeLangauge':(context) =>const changeLangauge(),
        'promotions':(context) => const promotions(),
        'promocode':(context) =>const  promoCode(),
        'payment':(context) =>const  payMent(),
        'order':(context) => const order(),
        'dorder':(context) => const dOrder(),
      },
    );
  }
}