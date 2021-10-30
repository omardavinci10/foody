import 'package:flutter/material.dart';
import 'package:foody/components/order_tile.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:foody/components/my_orders_data.dart';

class MyNotificationsData extends ChangeNotifier {
  int _noOfUnreadNotifications = 0;
  Map<int, bool> _ordersIDs = {};

  void setOrders(OrderTile currentOrder, List<OrderTile> previousOrders) {
    _ordersIDs[currentOrder.orderID] = false;
    for (int i = 0; i < previousOrders.length; i++) {
      _ordersIDs[previousOrders[i].orderID] = false;
    }
  }

  void addNotification(int orderID) {
    if (_ordersIDs.containsKey(orderID)) {
      if (_ordersIDs[orderID] == false) {
        _noOfUnreadNotifications++;
        _ordersIDs[orderID] = true;
        notifyListeners();
      }
    }
  }

  void removeNotification(int orderID) {
    if (_ordersIDs.containsKey(orderID)) {
      if (_ordersIDs[orderID] == true) {
        _noOfUnreadNotifications--;
        _ordersIDs.remove(orderID);
        notifyListeners();
      }
    }
  }

  int get getNoOfUnreadNotifications {
    int dummy = _noOfUnreadNotifications;
    return dummy;
  }

  void printOrdersMap() {
    _ordersIDs.forEach((key, value) {
      print('OrderID: $key, Read: $value');
    });
    print('Number of unread notifications now: $_noOfUnreadNotifications');
  }
}
