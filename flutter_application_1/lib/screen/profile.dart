import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/profileMenu.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: 3, child: ProfileMenu()),
    );
  }
}
