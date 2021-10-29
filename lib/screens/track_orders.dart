import 'package:flutter/material.dart';
import 'package:foody/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:foody/components/order_tile.dart';

class TrackOrdersScreen extends StatefulWidget {
  static const String id = 'track_orders';

  @override
  _TrackOrdersScreenState createState() => _TrackOrdersScreenState();
}

class _TrackOrdersScreenState extends State<TrackOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    List<OrderTile> previousOrderTiles = [];
    previousOrderTiles.add(OrderTile(
        orderID: 1827, price: 245, date: '29 Oct 2021', status: 'Delivered'));
    previousOrderTiles.add(OrderTile(
        orderID: 1828, price: 250, date: '28 Oct 2021', status: 'Delivered'));
    previousOrderTiles.add(OrderTile(
        orderID: 1829, price: 270, date: '21 Oct 2021', status: 'Delivered'));
    previousOrderTiles.sort((a, b) => a.compareTo(b.date));

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Order',
                style: kLightTextStyle,
              ),
              OrderTile(
                orderID: 15423,
                price: 245,
                date: DateFormat('d MMM y').format(DateTime.now()),
                status: 'Out to delivery',
              ),
              Text(
                'Previous Orders',
                style: kLightTextStyle,
              ),
              Column(
                children: previousOrderTiles,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
