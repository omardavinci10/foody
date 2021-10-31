import 'package:flutter/material.dart';
import 'package:foody/components/my_orders_data.dart';
import 'package:foody/components/order_tile.dart';
import 'package:foody/constants.dart';
import 'package:foody/screens/rating_screen.dart';
import 'package:provider/provider.dart';
import 'package:foody/components/notifications_data.dart';
import 'package:intl/intl.dart';
import 'package:foody/components/notification_tile.dart';

class NotificationsScreen extends StatefulWidget {
  static const String id = 'notifications_screen';

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

void fillOrders(BuildContext context) {
  Provider.of<MyNotificationsData>(context).setOrders(
      Provider.of<MyOrders>(context).getCurrentOrder,
      Provider.of<MyOrders>(context).getPreviousOrderTiles);
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int noOfUnreadNotifications = 0;
  OrderTile dummyOrderTile =
      OrderTile(orderID: -1, price: -1, date: '1 Jan 1', status: 'Not Order');
  @override
  Widget build(BuildContext context) {
    fillOrders(context);
    noOfUnreadNotifications =
        Provider.of<MyNotificationsData>(context).getNoOfUnreadNotifications;
    OrderTile currentOrder = Provider.of<MyOrders>(context).getCurrentOrder;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Just now',
                style: kLightTextStyle.copyWith(
                  fontSize: 14.0,
                ),
              ),
              NotificationTile(
                currentOrder: currentOrder,
                myTime: DateTime.now(),
                orderOrPromo: 'O',
              ),
              Text(
                'Today',
                style: kLightTextStyle.copyWith(
                  fontSize: 14.0,
                ),
              ),
              NotificationTile(
                myTime: DateTime.now(),
                orderOrPromo: 'P',
                currentOrder: dummyOrderTile,
                promoCode: 'XYZ',
                discountPercentage: 50,
              ),
              Text(
                'Recently',
                style: kLightTextStyle.copyWith(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
