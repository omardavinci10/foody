import 'package:flutter/material.dart';
import 'package:foody/components/my_orders_data.dart';
import 'package:foody/constants.dart';
import 'package:provider/provider.dart';
import 'package:foody/components/notifications_data.dart';

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
  @override
  Widget build(BuildContext context) {
    fillOrders(context);
    Provider.of<MyNotificationsData>(context).printOrdersMap();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: kOrangeColorInHex,
        child: Column(
          children: [
            Text(Provider.of<MyNotificationsData>(context)
                .getNoOfUnreadNotifications
                .toString()),
            Center(
              child: FloatingActionButton(
                onPressed: () =>
                    Provider.of<MyNotificationsData>(context, listen: false)
                        .addNotification(1827),
                child: Icon(Icons.plus_one_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
