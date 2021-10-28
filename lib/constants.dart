import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
  color: Colors.white,
);

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  labelText: '',
  labelStyle: TextStyle(
    color: Colors.black38,
  ),
  hintStyle: TextStyle(
    color: Colors.black38,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

var alertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  descTextAlign: TextAlign.start,
  animationDuration: Duration(milliseconds: 500),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
  ),
  alertAlignment: Alignment.center,
);

const kTextStyleHelpCenter = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15.0,
  color: Colors.black,
  height: 2,
);

const kLightGreyColorInHex = Colors.white;

const kOrangeColorInHex = Color(0xFFF89C29);

const kAuthButtonStyle = AuthButtonStyle(
  borderRadius: 10.0,
  buttonColor: Colors.white,
  borderColor: Colors.black26,
  iconSize: 20.0,
  padding: EdgeInsets.all(8.0),
  textStyle: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: Colors.black54,
  ),
);
