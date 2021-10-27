import 'package:flutter/material.dart';
import 'package:foody/screens/splash_screen.dart';
import 'package:foody/screens/welcome_screen.dart';
import 'package:foody/screens/login_screen.dart';
import 'package:foody/screens/registration_screen.dart';

void main() => runApp(Foody());

class Foody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
