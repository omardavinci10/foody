import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/constants.dart';
import 'package:flutter/material.dart';
import 'package:foody/constants.dart';
import 'package:foody/screens/User_screen.dart';
import 'package:foody/screens/contactus_screen.dart';
import 'package:foody/constants.dart';
import 'package:foody/components/profile_widgets.dart';
import 'package:foody/screens/empty_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = 'Home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget body = EmptyPage();
  @override
  Widget build(BuildContext context) {
    final section;

    /// You can easily control the section for example inside the initState where you check
    /// if the user logged in, or other related logic

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xfffafafa),
        title: new Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),

      /// Display the drawer for logged in users only
      drawer: Drawer(
        child: new ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            ListTile(
                title: Text("Menu"),
                leading: Icon(Icons.flip_to_front),
                onTap: () {}),
            ListTile(
                title: Text("Your Wallet"),
                leading: FaIcon(FontAwesomeIcons.wallet),
                onTap: () {}),
            ListTile(
                title: Text("Profile"),
                leading: FaIcon(FontAwesomeIcons.user),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    title = "Profile";
                    body = UserPage();
                  });
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserPage()));
                  */
                }),
            ListTile(
                title: Text("Track Orders"),
                leading: FaIcon(FontAwesomeIcons.listUl),
                onTap: () {}),
            ListTile(
                title: Text("Notifications"),
                leading: FaIcon(FontAwesomeIcons.bell),
                onTap: () {}),
            ListTile(
              title: Text("Contact Us"),
              onTap: () {
                setState(() {
                  title = "Contact Us";
                  Navigator.pop(context);
                  body = ContactUsScreen();
                });
              },
              leading: FaIcon(FontAwesomeIcons.headset),
            ),
          ],
        ),
      ),
      body: Container(
        child: body,
      ),
    );
  }
}
