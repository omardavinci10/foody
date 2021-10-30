import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/screens/foodDetails_screen.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../constants.dart';

class Order {
  final String imagePath;
  final String description;
  final String name;
  final double price;
  final int rate;
  Order(this.imagePath, this.description, this.name, this.price, this.rate);
}

class OrderScreen extends StatefulWidget {
  static const String id = 'wallet_screen';
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Order> orderList = [
    Order(
        'images/p1.jpg',
        "Agmad Sandwich, Agmad Sandwich, Agmad Sandwich, Agmad Sandwich, Agmad Sandwich,",
        'Mini Sandwich',
        54.00,
        10),
    Order(
        'images/p1.jpg',
        "Agmad Sandwich, Agmad Sandwich, Agmad Sandwich, Agmad Sandwich, Agmad Sandwich,",
        'Mini Sandwich',
        54.00,
        10),
  ];

  final List<String> foodList = [
    'Appetizer',
    'Soup',
    'Main Dishes',
    'Burger',
    'Sandwiches',
    'Salad',
  ];

  // Color myColor = (Wallet.budget < 0) ? Colors.red : Colors.green;
  double x = 0.0;
  double y = 0.0;
  ItemScrollController? _controllerListView = ItemScrollController();

  void initState() {
    // TODO: implement initState
    super.initState();

    _controllerListView = ItemScrollController();
  }

  @override
  var selected = [false, false, false, false, false, false];

  Widget build(BuildContext context) {
    double deviceSizeHeight = MediaQuery.of(context).size.height;
    double deviceSizeWidth = MediaQuery.of(context).size.width;
    x = deviceSizeWidth;
    y = deviceSizeHeight;
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // ignore: deprecated_member_use

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ActionChip(
                      side: BorderSide(color: Colors.black12),
                      padding: EdgeInsets.all(15),
                      avatar: FaIcon(
                        FontAwesomeIcons.utensils,
                        color:
                            selected[0] == true ? Colors.white : Colors.black12,
                      ),
                      backgroundColor: selected[0] == true
                          ? Colors.orangeAccent
                          : Colors.white38,
                      label: Text(
                        "Appetizer",
                        style: TextStyle(
                          color: selected[0] == true
                              ? Colors.white
                              : Colors.black12,
                        ),
                      ),
                      onPressed: () {
                        _controllerListView?.scrollTo(
                            index: 0, duration: Duration(seconds: 1));
                        setState(() {
                          toggle(0);
                          selected[0] = !selected[0];
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ActionChip(
                      side: BorderSide(color: Colors.black12),
                      padding: EdgeInsets.all(10),
                      avatar: FaIcon(
                        FontAwesomeIcons.utensils,
                        color:
                            selected[1] == true ? Colors.white : Colors.black12,
                      ),
                      backgroundColor: selected[1] == true
                          ? Colors.orangeAccent
                          : Colors.transparent,
                      label: Text(
                        "Soap",
                        style: TextStyle(
                          color: selected[1] == true
                              ? Colors.white
                              : Colors.black12,
                        ),
                      ),
                      onPressed: () {
                        _controllerListView?.scrollTo(
                            index: 1, duration: Duration(seconds: 1));
                        setState(() {
                          toggle(1);
                          selected[1] = !selected[1];
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ActionChip(
                      side: BorderSide(color: Colors.black12),
                      padding: EdgeInsets.all(10),
                      avatar: FaIcon(
                        FontAwesomeIcons.utensils,
                        color:
                            selected[2] == true ? Colors.white : Colors.black12,
                      ),
                      backgroundColor: selected[2] == true
                          ? Colors.orangeAccent
                          : Colors.white38,
                      label: Text(
                        "Main Dishes",
                        style: TextStyle(
                          color: selected[2] == true
                              ? Colors.white
                              : Colors.black12,
                        ),
                      ),
                      onPressed: () {
                        _controllerListView?.scrollTo(
                            index: 2, duration: Duration(seconds: 1));
                        setState(() {
                          toggle(2);
                          selected[2] = !selected[2];
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ActionChip(
                      side: BorderSide(color: Colors.black12),
                      padding: EdgeInsets.all(10),
                      avatar: FaIcon(
                        FontAwesomeIcons.utensils,
                        color:
                            selected[3] == true ? Colors.white : Colors.black12,
                      ),
                      backgroundColor: selected[3] == true
                          ? Colors.orangeAccent
                          : Colors.white38,
                      label: Text(
                        "Burger",
                        style: TextStyle(
                          color: selected[3] == true
                              ? Colors.white
                              : Colors.black12,
                        ),
                      ),
                      onPressed: () {
                        _controllerListView?.scrollTo(
                            index: 3, duration: Duration(seconds: 1));
                        setState(() {
                          toggle(3);
                          selected[3] = !selected[3];
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ActionChip(
                      side: BorderSide(color: Colors.black12),
                      padding: EdgeInsets.all(10),
                      avatar: FaIcon(
                        FontAwesomeIcons.utensils,
                        color:
                            selected[4] == true ? Colors.white : Colors.black12,
                      ),
                      backgroundColor: selected[4] == true
                          ? Colors.orangeAccent
                          : Colors.white38,
                      label: Text(
                        "Sandwich",
                        style: TextStyle(
                          color: selected[4] == true
                              ? Colors.white
                              : Colors.black12,
                        ),
                      ),
                      onPressed: () {
                        _controllerListView?.scrollTo(
                            index: 4, duration: Duration(seconds: 1));
                        setState(() {
                          toggle(4);
                          selected[4] = !selected[4];
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ActionChip(
                      side: BorderSide(color: Colors.black12),
                      padding: EdgeInsets.all(10),
                      avatar: FaIcon(
                        FontAwesomeIcons.utensils,
                        color:
                            selected[5] == true ? Colors.white : Colors.black12,
                      ),
                      backgroundColor: selected[5] == true
                          ? Colors.orangeAccent
                          : Colors.white38,
                      label: Text(
                        "Salad",
                        style: TextStyle(
                          color: selected[5] == true
                              ? Colors.white
                              : Colors.black12,
                        ),
                      ),
                      onPressed: () {
                        _controllerListView?.scrollTo(
                            index: 5, duration: Duration(seconds: 1));
                        setState(() {
                          toggle(5);
                          selected[5] = !selected[5];
                        });
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: ScrollablePositionedList.builder(
                itemScrollController: _controllerListView,
                itemCount: foodList.length,
                itemBuilder: (BuildContext context, int index) =>
                    buildFoodList(context, index, foodList[index])),
          ),
        ],
      ),
    );
  }

  void toggle(pos) {
    for (var i = 0; i < selected.length; i++) {
      if (i != pos) selected[i] = false;
    }
  }

  Widget buildFoodList(BuildContext context, int index, String subTitle) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    subTitle,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (orderList.length + 2) * y * .12,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: orderList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildTripCard(context, index)),
            ),
          ],
        ),
      );
  Widget buildTripCard(BuildContext context, int index) {
    final wallet = orderList[index];
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(10.0)),
        child: new InkWell(
          onTap: () {
            print(x);
            print(y);
            Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(seconds: 2),
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    animation = CurvedAnimation(
                        parent: animation, curve: Curves.elasticInOut);
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                      alignment: Alignment.center,
                    );
                  },
                  pageBuilder: (context, animation, animataionTime) {
                    return FoodDetails(imagePath: 'images/p1.jpg');
                  },
                ));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        child: Image.asset(
                          orderList[0].imagePath,
                          fit: BoxFit.cover,
                          width: 80,
                          height: 80,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8),
                        child: Container(
                          height: y * .16,
                          width: x * .62,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    orderList[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    orderList[index].price.toString() + " EGP",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Container(
                                  child: Text(
                                    orderList[index].description,
                                    style: TextStyle(color: Colors.black12),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    orderList[index].rate.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.orangeAccent,
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        print("aywaa");
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.orangeAccent,
                                      )),
                                ],
                              ),
                            ],
                          ),
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

var bannerItems = ["Burger", "Cheese Chilly", "Noodles", "Pizza"];
var bannerImage = [
  "images/p1.jpg",
  "images/p1.jpg",
  "images/p1.jpg",
  "images/p1.jpg",
];
