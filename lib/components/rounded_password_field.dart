import 'package:flutter/material.dart';
import 'package:login_page/components/text_field_container.dart';
import 'package:login_page/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final String hintText;

@override
_RoundedPasswordFieldState createState() => new _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: _obscureText,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffix: InkWell(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(Icons.visibility_off,
              color: kPrimaryColor,),
          ),
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}



