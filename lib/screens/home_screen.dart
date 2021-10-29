import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/constants.dart';
import 'package:flutter/material.dart';
import 'package:foody/constants.dart';
import 'package:foody/screens/User_screen.dart';
import 'package:foody/screens/contactus_screen.dart';
import 'package:foody/constants.dart';
import 'package:foody/components/profile_widgets.dart';
import 'package:foody/screens/empty_screen.dart';
import 'package:foody/screens/login_screen.dart';

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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: ProfileWidget(
                imagePath: 'images/photo1.jpg',
                onClicked: () async {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 0),
              child: Text(
                'Mohammed Ahmed',
                style: TextStyle(
                  // color: Colors.black,
                  fontSize: 14.0,
                  // fontFamily: 'Urbanist-Bold',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
              child: Text(
                '+20 111 222 3333',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0,
                  // fontFamily: 'Urbanist-Bold',
                  // fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
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
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: _createFooterItem(
                icon: Icons.logout,
                text: 'Logout',
                onTap: () {
                  setState(() {
                    title = "Logout";
                    Navigator.pop(context);
                    body = LoginScreen();
                  });
                },
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: body,
      ),
    );
  }
}

Widget _createFooterItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon, color: Colors.black26),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.black26),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
