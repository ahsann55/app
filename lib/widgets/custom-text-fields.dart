import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSimpleTextField extends StatelessWidget {
  CustomSimpleTextField({
    this.hintText,
    this.keyboard,
    this.obscureText = false,
    this.topPadding = 15,
    this.bottomPadding = 15,
    this.hintTextColor = Colors.white,
    this.textColor = Colors.black,
    this.border,
  });
  final String hintText;
  final TextInputType keyboard;
  final bool obscureText;
  final double topPadding;
  final double bottomPadding;
  final Color hintTextColor;
  final Color textColor;
  final InputBorder border;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 35, right: 35, top: topPadding, bottom: bottomPadding),
      child: TextField(
        onChanged: (value) {},
        obscureText: obscureText,
        keyboardType: keyboard,
        style: TextStyle(color: textColor, fontSize: 16),
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          hintStyle: TextStyle(fontSize: 18, color: hintTextColor),
          border: border,
        ),
      ),
    );
  }
}
