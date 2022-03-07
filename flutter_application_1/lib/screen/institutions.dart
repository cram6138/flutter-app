import 'package:flutter/material.dart';

class Institutions extends StatefulWidget {
  @override
  _InstitutionsState createState() => _InstitutionsState();
}

class _InstitutionsState extends State<Institutions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Institutions"),
        backgroundColor: const Color.fromARGB(255, 15, 68, 112),
      ),
      body: const Center(
        child: Text("Institutions Page"),
      ),
    );
  }
}
