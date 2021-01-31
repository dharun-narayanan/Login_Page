import 'package:flutter/material.dart';
import 'package:login_page/Screens/Signup/components/body.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => new _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
