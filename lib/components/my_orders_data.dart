import 'package:flutter/material.dart';
import 'package:foody/components/order_tile.dart';
import 'package:intl/intl.dart';

class MyOrders extends ChangeNotifier {
  OrderTile _currentOrder = OrderTile(
    orderID: 15423,
    price: 245,
    date: DateFormat('d MMM y').format(DateTime.now()),
    status: 'Out to delivery',
  );

  List<OrderTile> _previousOrderTiles = [];

  MyOrders() {
    _previousOrderTiles = [
      OrderTile(
          orderID: 1828, price: 245, date: '25 Oct 2021', status: 'Delivered'),
      OrderTile(
          orderID: 1827, price: 250, date: '21 Oct 2021', status: 'Delivered'),
      OrderTile(
          orderID: 1829, price: 270, date: '28 Oct 2021', status: 'Delivered')
    ];
    _previousOrderTiles.sort((a, b) => a.compareTo(b.date));
  }

  void changeCurrentOrder(int orderID, int price, String date, String status) {
    _currentOrder =
        OrderTile(orderID: orderID, price: price, date: date, status: status);
    notifyListeners();
  }

  void addPreviousOrder(int orderID, int price, String date, String status) {
    OrderTile previousOrder =
        OrderTile(orderID: orderID, price: price, date: date, status: status);
    _previousOrderTiles.add(previousOrder);
    _previousOrderTiles.sort((a, b) => a.compareTo(b.date));
    notifyListeners();
  }

  OrderTile get getCurrentOrder {
    OrderTile dummyTile = _currentOrder;
    return dummyTile;
  }

  List<OrderTile> get getPreviousOrderTiles {
    List<OrderTile> dummyList = _previousOrderTiles;
    dummyList.sort((a, b) => a.compareTo(b.date));
    _previousOrderTiles.sort((a, b) => a.compareTo(b.date));
    return dummyList;
  }
}
