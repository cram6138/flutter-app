import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text("Message Page"),
      ),
    );
  }
}
