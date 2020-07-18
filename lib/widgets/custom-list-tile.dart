import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({@required this.title, @required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: ListTile(
            onTap: onTap,
            dense: true,
            leading: Icon(
              icon,
              color: Colors.grey[400],
              size: 20.0,
            ),
            title: Text(
              '$title',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
