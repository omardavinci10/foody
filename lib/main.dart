import 'package:flutter/material.dart';
import 'package:foody/screens/MenuScreen.dart';
import 'package:foody/screens/SmartVillage_Screen.dart';
import 'package:foody/screens/User_screen.dart';
import 'package:foody/screens/Wallet_Screen.dart';
import 'package:foody/screens/contactus_screen.dart';
import 'package:foody/screens/splash_screen.dart';
import 'package:foody/screens/track_orders.dart';
import 'package:foody/screens/welcome_screen.dart';
import 'package:foody/screens/login_screen.dart';
import 'package:foody/screens/registration_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foody/screens/home_screen.dart';
import 'package:foody/screens/empty_screen.dart';
import 'package:foody/screens/User_screen.dart';
import 'package:foody/screens/foodDetails_screen.dart';

void main() => runApp(Foody());

class Foody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        UserPage.id: (context) => UserPage(),
        ContactUsScreen.id: (context) => ContactUsScreen(),
        HomePage.id: (context) => HomePage(),
        SmartVillageScreen.id: (context) => SmartVillageScreen(),
        // EmptyPage.id: (context) => EmptyPage(),
        WalletScreen.id: (context) => WalletScreen(),
        OrderScreen.id: (context) => OrderScreen(),
        TrackOrdersScreen.id: (context) => TrackOrdersScreen(),
        FoodDetails.id: (context) => FoodDetails(
              imagePath: 'images/Contact_us.png',
            ),
        TrackOrdersScreen.id: (context) => TrackOrdersScreen(),
        SmartVillageScreen.id: (context) => SmartVillageScreen(),
      },
    );
  }
}
