import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.backgroundColor,
    this.onPressed,
    this.title,
    this.titleColor = Colors.white,
    this.width,
    this.height = 50,
  });
  final String title;
  final Color backgroundColor;
  final Function onPressed;
  final Color titleColor;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: MaterialButton(
        minWidth: width == null ? MediaQuery.of(context).size.width : width,
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: titleColor, fontSize: 16),
        ),
        color: backgroundColor,
        height: height,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
