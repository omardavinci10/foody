import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/constants.dart';
import 'package:flutter/material.dart';
import 'package:foody/components/rounded_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foody/components/login_buttons.dart';
import 'package:foody/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showSpinner = false;
  late String displayName;
  late String email;
  late String phone;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Hero(
                    tag: 'logo',
                    child: Container(
                      height: 30.0,
                      child: Image.asset('images/logo1.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Sign up to continue!',
                    style: GoogleFonts.openSansCondensed(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                reverse: true,
                children: [
                  TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                      displayName = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your name',
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      //Do something with the user input.
                      email = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your email address',
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      //Do something with the user input.
                      phone = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your phone number',
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Center(
                    child: Text(
                      'Note that we will use your phone number to verify your account',
                      style: GoogleFonts.ubuntu(
                          color: Colors.black54, fontSize: 12.0),
                    ),
                  ),
                  RoundedButton(
                      title: 'Create account',
                      color: kOrangeColorInHex,
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        if (displayName == '' || email == '' || phone == '') {
                          setState(() {
                            showSpinner = false;
                            Alert(
                              context: context,
                              style: alertStyle,
                              type: AlertType.info,
                              title: "Registration error",
                              desc: "Fill all the fields.",
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(10.0),
                                ),
                              ],
                            ).show();
                          });
                        } else {
                          try {
                            //Sign up a new user
                            /*
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        await _auth.currentUser
                            .updateDisplayName(displayName);
                        setState(() {
                          showSpinner = false;
                        });
                        Navigator.pushNamed(context, ChatScreen.id);
                      }
                      */
                            setState(() {
                              showSpinner = false;
                            });
                          } catch (e) {
                            setState(() {
                              showSpinner = false;
                              Alert(
                                context: context,
                                style: alertStyle,
                                type: AlertType.info,
                                title: "Registration error",
                                desc:
                                    "Maybe your email address is already used, try login or use another email address",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    color: Color.fromRGBO(0, 179, 134, 1.0),
                                    radius: BorderRadius.circular(10.0),
                                  ),
                                ],
                              ).show();
                            });
                          }
                        }
                      }),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: kLightGreyColorInHex,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I already have an account',
                            style: GoogleFonts.openSansCondensed(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          GestureDetector(
                            child: Text(
                              'Login',
                              style: GoogleFonts.openSansCondensed(
                                color: kOrangeColorInHex,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: Text(
                      'or continue with',
                      style: GoogleFonts.ubuntu(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  LoginButtons(),
                ].reversed.toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
