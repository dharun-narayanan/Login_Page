import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';

class ForgotPassword extends StatefulWidget {
  final bool login;
  final Function press;
  const ForgotPassword({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);
  @override
  _ForgotPasswordState createState() => new _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.login ? "Forgotten your login details? " : "Forgotten your login details? ",
          style: TextStyle(color: kPrimaryColor,fontSize: 14,fontWeight: FontWeight.w400),
        ),
        GestureDetector(
          onTap: widget.press,
          child: Text(
            widget.login ? "Get help with with logging in." : "Get help with with logging in.",
            style: TextStyle(
              color: kPrimaryColor,fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
