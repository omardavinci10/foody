import 'package:flutter/material.dart';
import 'package:foody/components/order_tile.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:foody/components/my_orders_data.dart';

class MyNotificationsData extends ChangeNotifier {
  int _noOfUnreadNotifications = 0;
  Map<int, String> _ordersIDs = {};

  void setOrders(OrderTile currentOrder, List<OrderTile> previousOrders) {
    _ordersIDs[currentOrder.orderID] = 'U';
    for (int i = 0; i < previousOrders.length; i++) {
      _ordersIDs[previousOrders[i].orderID] = 'U';
    }
  }

  void addNotification(int orderID) {
    if (_ordersIDs.containsKey(orderID)) {
      if (_ordersIDs[orderID] == 'U') {
        _noOfUnreadNotifications++;
        _ordersIDs.update(orderID, (value) => 'R');
        notifyListeners();
      }
    }
  }

  void removeNotification(int orderID) {
    if (_ordersIDs.containsKey(orderID) == true) {
      if (_ordersIDs[orderID] == 'R') {
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
