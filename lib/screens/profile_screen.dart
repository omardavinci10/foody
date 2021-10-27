import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:foody/components/profile_widgets.dart';

class ProfilePage extends StatefulWidget {
    static const String id = 'profile_screen';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final name = TextEditingController();
  final company = TextEditingController();
  final birthDate = TextEditingController();
  final gender = TextEditingController();
  final phoneNumber = TextEditingController();
  final emailAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: new Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 8.0),
        child: ListView(
          children: [
            ProfileWidget(
              imagePath: 'images/logo1.png',
              onClicked: () async {},
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Personal Details",
              style: TextStyle(color: Colors.black38, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  //    validator: validateName,
                  controller: name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.orange)),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black12)),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  //    validator: validateName,
                  controller: company,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.orange)),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black12)),
                    labelText: 'Company',
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  //    validator: validateName,
                  controller: birthDate,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.orange)),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black12)),
                    labelText: 'Birthdate',
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15, bottom: 10),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  //    validator: validateName,
                  controller: gender,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.orange)),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black12)),
                    labelText: 'Gender',
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              "Account Settings",
              style: TextStyle(color: Colors.black38, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  //    validator: validateName,
                  controller: phoneNumber,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.orange)),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black12)),
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  //    validator: validateName,
                  controller: emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.orange)),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black12)),
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, top: 15),
              child: Material(
                elevation: 5.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                    onPressed: () {},
                    minWidth: 200.0,
                    height: 42.0,
                    child: new Text(
                      "Change Password",
                      style: TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, top: 70),
              child: Material(
                elevation: 5.0,
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    "Save Changes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
