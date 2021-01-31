
import 'package:login_page/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Screens/Signup/signup_screen.dart';
import 'package:login_page/components/already_have_an_account_acheck.dart';

class Background extends StatefulWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  _BackgroundState createState() => new _BackgroundState();
}

class _BackgroundState extends State<Background> {

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            bottom: 15,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ),
                      );
                    },
                  ),
                ]
            )
          ),
          widget.child,
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    );
  }
}
