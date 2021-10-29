import 'package:flutter/material.dart';
import 'package:foody/screens/foodDetails_screen.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class Order {
  final String imagePath;
  final String desciprion;

  Order(this.imagePath, this.desciprion);
}

class OrderScreen extends StatefulWidget {
  static const String id = 'wallet_screen';

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Order> orderList = [
    Order('images/p1.jpg', "Example"),
    Order('images/p1.jpg', "Example"),
    Order('images/p1.jpg', "Example"),
    Order('images/p1.jpg', "Example"),
    Order('images/p1.jpg', "Example"),
    Order('images/p1.jpg', "Example"),
  ];

  // Color myColor = (Wallet.budget < 0) ? Colors.red : Colors.green;

  @override
  Widget build(BuildContext context) {
    double deviceSizeHeight = MediaQuery.of(context).size.height;
    double deviceSizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: ListView.builder(
                  itemCount: orderList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildTripCard(context, index)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final wallet = orderList[index];
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        child: new InkWell(
          onTap: () {
            Navigator.pushNamed(context, FoodDetails.id);

            print("tapped");
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          orderList[0].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Spacer(),
                      // Spacer(),
                      Text(
                        orderList[0].desciprion,
                      ),
                      // Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
