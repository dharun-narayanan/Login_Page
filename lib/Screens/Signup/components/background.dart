import 'package:login_page/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  _BackgroundState createState() => new _BackgroundState();
}

class _BackgroundState extends State<Background>{

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
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.25,
            ),
          ),
          widget.child,
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    );
  }
}
