import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';
import 'foodDetails_screen.dart';

class Order {
  final String imagePath;
  final String title;
  final String desciprion;

  Order(this.imagePath, this.title, this.desciprion);
}

class OrderScreen extends StatefulWidget {
  static const String id = 'order_screen';

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Order> orderList = [
    Order('images/photo1.jpg', "Mini Sandwich", "Lorem Ipsum is  "),
    Order('images/photo1.jpg', "Mini Sandwich", "Lorem Ipsum is  "),
    Order('images/photo1.jpg', "Mini Sandwich", "Lorem Ipsum is  "),
    Order('images/photo1.jpg', "Mini Sandwich", "Lorem Ipsum is  "),
    Order('images/photo1.jpg', "Mini Sandwich", "Lorem Ipsum is  "),
    Order('images/photo1.jpg', "Mini Sandwich", "Lorem Ipsum is  "),
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
              height: deviceSizeHeight,
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
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              orderList[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),

                      // Spacer(),
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  orderList[index].title,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  orderList[index].desciprion,
                                ),
                              ],
                            ),
                          ],
                        ),
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
