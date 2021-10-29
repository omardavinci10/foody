import 'package:flutter/cupertino.dart';

class EmptyPage extends StatefulWidget {
  static const String id = 'empty_screen';

  @override
  _EmptyPageState createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Empty Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
