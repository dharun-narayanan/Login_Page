import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/Login/components/background.dart';
import 'package:login_page/components/forgot_password.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/components/rounded_input_field.dart';
import 'package:login_page/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}

String _emailController;
String _passwordController;

class _BodyState extends State<Body> {


  final TextEditingController _email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: GoogleFonts.portLligatSans(
                  textStyle: Theme.of(context).textTheme.headline5,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (String value) {
                _emailController = value;
              },
            ),
            RoundedPasswordField(
              hintText: "Password",
              onChanged: (String value) {
                _passwordController = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {}

            ),
            SizedBox(height: size.height * 0.01),
            ForgotPassword(
              press: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment
                                  .start,
                              children: [
                                SizedBox(height: 10,),
                                Text("Forgot Password??", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),),
                                SizedBox(height: 10,),
                                RoundedInputField(
                                  hintText: "Your Email",
                                  onChanged: (String value) {
                                    _emailController = value;
                                  },
                                ),
                                RoundedButton(
                                  text: "Send Email",
                                  press: () {
                                    Navigator.of(context).pop();
                                    if(_emailController.contains("@gmail.com")){
                                    }
                                    else{
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("NOT AUTHORISED"),
                                              content: Text("Invalid Email or User Does Not Exist!!!"),
                                              actions: [
                                                FlatButton(
                                                  child: Text("Ok"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    setState(() {
                                                      _emailController="";
                                                    });
                                                  },
                                                )
                                              ],
                                            );
                                          });
                                    }
                                  },
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: FlatButton(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(color: Colors.blue,fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      setState(() {
                                      });
                                    },
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
