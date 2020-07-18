import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.backgroundColor,
      this.onPressed,
      this.title,
      this.titleColor = Colors.white,
      this.icon,
      this.iconBackgroundColor,
      this.iconColor});
  final String title;
  final Color backgroundColor;
  final Function onPressed;
  final Color titleColor;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color iconColor;
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                topLeft: Radius.circular(5.0),
              ),
            ),
            height: 50,
            width: 50,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              thickness: 1.0,
              color: Colors.grey[400],
              width: 1.0,
            ),
          ),
          MaterialButton(
            minWidth: 250,
            onPressed: onPressed,
            child: Text(
              title,
              style: TextStyle(color: titleColor, fontSize: 16),
            ),
            color: backgroundColor,
            height: 50,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
