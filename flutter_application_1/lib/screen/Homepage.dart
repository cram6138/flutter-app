import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/DrawerSideNav.dart';

class HomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DrawerSideNav());
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
