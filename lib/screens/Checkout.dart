import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/components/rounded_button.dart';
import 'package:foody/screens/home_screen.dart';
import 'package:foody/screens/single_multi_screen.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

double sum = 0;

class CheckoutScreen extends StatefulWidget {
  static const String id = 'checkout_screen';

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List<String> payments = [
    'Cash on delivery',
    'Credit Card',
  ];
  List<bool> isSelected = [];

  final Note = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    isSelected = [true, false, false];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceSizeHeight = MediaQuery.of(context).size.height;
    double deviceSizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: deviceSizeWidth * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Delivery Address',
                                      style: new TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Urbanist-Bold',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xfffafafa))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.business_rounded,
                                        color: kOrangeColorInHex,
                                      ),
                                      Text(
                                        " Building 16 - A",
                                        style: TextStyle(
                                          // color: Colors.black38,
                                          fontSize: 14.0,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                  // Spacer(),
                                  // Spacer(),
                                  TextButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        // backgroundColor: Color(0xfffafafa),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          bool b = false;
                                          return StatefulBuilder(
                                            builder: (BuildContext context,
                                                    setState) =>
                                                Container(
                                              height: deviceSizeHeight * .5,
                                              // width: deviceSizeWidth,
//margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 18.0),
                                                        child: Text(
                                                          "Time to deliver",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                            fontFamily:
                                                                'Urbanist-Bold',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  ToggleButtons(
                                                    isSelected: isSelected,
                                                    children: <Widget>[
                                                      // first toggle button
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                          'First',
                                                        ),
                                                      ),
                                                      // second toggle button
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                          'Second',
                                                        ),
                                                      ),
                                                      // third toggle button
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                          'Third',
                                                        ),
                                                      ),
                                                    ],
                                                    onPressed: (int index) {
                                                      setState(() {
                                                        for (int i = 0;
                                                            i <
                                                                isSelected
                                                                    .length;
                                                            i++) {
                                                          isSelected[i] =
                                                              i == index;
                                                        }
                                                      });
                                                    },
                                                  ),
                                                  RoundedButton(
                                                    color: kOrangeColorInHex,
                                                    title: "Add promo",
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, true);
                                                    },
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      "Change",
                                      style: TextStyle(
                                        // fontSize: 14.0,
                                        fontWeight: FontWeight.bold,

                                        color: kOrangeColorInHex,
                                      ),
                                    ),
                                  ),
                                  // Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Delivery Notes"),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 12),
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white10),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white10),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2)),
                                      ),
                                      hintText: 'Company name, and so on',
                                      hintStyle:
                                          TextStyle(color: Colors.black26),
                                      fillColor: Color(0xfff7f7f7),
                                      filled: true,
                                    ),
                                    keyboardType: TextInputType.visiblePassword,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: deviceSizeHeight * .04),
                  ),
                ),
                Container(
                  width: deviceSizeWidth * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Delivery Time',
                                      style: new TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Urbanist-Bold',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    color: kOrangeColorInHex,
                                  ),
                                  Text(
                                    " 02:00 PM",
                                    style: TextStyle(
                                      // color: Colors.black38,
                                      fontSize: 14.0,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              // Spacer(),
                              // Spacer(),
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      // backgroundColor: Color(0xfffafafa),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      context: context,
                                      builder: ((builder) =>
                                          customisedBottomSheet(context)));
                                },
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                    // fontSize: 14.0,
                                    fontWeight: FontWeight.bold,

                                    color: kOrangeColorInHex,
                                  ),
                                ),
                              ),
                              // Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: deviceSizeHeight * .04),
                  ),
                ),
                Container(
                  width: deviceSizeWidth * 0.95,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Payment Method',
                                style: new TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Urbanist-Bold',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: SizedBox(
                          height: 150.0,
                          child:
                              SingleSelectionPage(payments, Color(0xfffafafa)),
                        ),
                      ),

                      //  child: Column,
                    ]),
                  ),
                ),
                Container(
                  width: deviceSizeWidth * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Payment Summary',
                                      style: new TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Urbanist-Bold',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  // basket.title,
                                  "Subtotal",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.0,
                                    fontFamily: 'Urbanist-Bold',
                                  ),
                                ),
                                // Spacer(),
                                // Spacer(),
                                Text(
                                  "${sum.toStringAsFixed(2)}",
                                ),

                                // Spacer(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  // basket.title,
                                  "Delivery fee",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.0,
                                    fontFamily: 'Urbanist-Bold',
                                  ),
                                ),
                                // Spacer(),
                                // Spacer(),
                                Text(
                                  "${sum.toStringAsFixed(2)}",
                                ),

                                // Spacer(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  // basket.title,
                                  "Discount",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.0,
                                    fontFamily: 'Urbanist-Bold',
                                  ),
                                ),
                                // Spacer(),
                                // Spacer(),
                                Text(
                                  "${'' + sum.toStringAsFixed(2)}",
                                  style: TextStyle(color: Colors.green),
                                ),

                                // Spacer(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  // basket.title,
                                  "Wallet",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.0,
                                    fontFamily: 'Urbanist-Bold',
                                  ),
                                ),
                                // Spacer(),
                                // Spacer(),
                                Text(
                                  "${'' + sum.toStringAsFixed(2)}",
                                ),

                                // Spacer(),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  // basket.title,
                                  "Total amount",
                                  style: TextStyle(
                                    // color: Colors.black38,
                                    fontSize: 14.0,
                                    fontFamily: 'Urbanist-Bold',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // Spacer(),
                                // Spacer(),
                                Text(
                                  "${'EGP ' + sum.toStringAsFixed(2)}",
                                  style: TextStyle(
                                    // color: Colors.black38,
                                    fontSize: 14.0,
                                    fontFamily: 'Urbanist-Bold',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                // Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: deviceSizeHeight * .04),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  // color: kOrangeColorInHex,
                  borderRadius: BorderRadius.circular(10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: kOrangeColorInHex, width: 01),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    hoverColor: Colors.black,
                    minWidth: deviceSizeWidth * .45,
                    // minWidth: 200.0,
                    height: 47.0,
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: kOrangeColorInHex,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: kOrangeColorInHex,
                  borderRadius: BorderRadius.circular(10.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, HomePage.id, (route) => false);
                    },
                    hoverColor: Colors.black,
                    minWidth: deviceSizeWidth * .45,
                    height: 42.0,
                    child: Text(
                      "Place Order",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

Widget customisedBottomSheet(BuildContext context) {
  double deviceSizeHeight = MediaQuery.of(context).size.height;
  double deviceSizeWidth = MediaQuery.of(context).size.width;
  return Container(
    height: deviceSizeHeight * .5,
    // width: deviceSizeWidth,
//margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Time to deliver",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Urbanist-Bold',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        RoundedButton(
          color: kOrangeColorInHex,
          title: "Add promo",
          onPressed: () {
            Navigator.pop(context, true);
          },
        )
      ],
    ),
  );
}
