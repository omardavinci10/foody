import 'package:flutter/material.dart';
import 'package:foody/screens/User_screen.dart';
import 'package:foody/screens/contactus_screen.dart';
import 'package:foody/screens/splash_screen.dart';
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
      initialRoute: EmptyPage.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        UserPage.id: (context) => UserPage(),
        ContactUsScreen.id: (context) => ContactUsScreen(),
        HomePage.id: (context) => HomePage(),
        EmptyPage.id: (context) => EmptyPage(),
        FoodDetails.id: (context) => FoodDetails(
              imagePath: 'images/Contact_us.png',
            ),
      },
    );
  }
}
