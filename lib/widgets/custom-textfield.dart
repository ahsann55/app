import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {@required this.hintText,
      @required this.keyboard,
      this.enabled = true,
      this.obscureText = false,
      @required this.icon});
  final String hintText;
  final TextInputType keyboard;
  final bool enabled;
  final bool obscureText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 45),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(7.0),
                topLeft: Radius.circular(7.0),
              ),
            ),
            height: 48,
            width: 45,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              color: Colors.grey[700],
              width: 1,
              thickness: 1.0,
            ),
          ),
          Expanded(
            child: TextField(
              obscureText: obscureText,
              enabled: enabled,
              keyboardType: keyboard,
              onChanged: (value) {},
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12.0),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.white70,
                ),
                filled: true,
                fillColor: Colors.black,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(7.0),
                    bottomRight: Radius.circular(7.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(7.0),
                    bottomRight: Radius.circular(7.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
