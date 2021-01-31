import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/Login/login_screen.dart';
import 'package:login_page/Screens/Signup/components/background.dart';
import 'package:login_page/Screens/Signup/components/or_divider.dart';
import 'package:login_page/Screens/Signup/components/social_icon.dart';
import 'package:login_page/components/already_have_an_account_acheck.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/components/rounded_input_field.dart';
import 'package:login_page/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: GoogleFonts.portLligatSans(
                  textStyle: Theme.of(context).textTheme.headline5,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal
              ),
            ),
            SizedBox(),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.32,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Confirm Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
