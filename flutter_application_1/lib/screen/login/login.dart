import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login/background.dart';
import 'package:flutter_application_1/screen/login/login_form.dart';

class Login extends StatefulWidget {
  @override
  State createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          const LoginForm(),
        ],
      ),
    );
  }
}
