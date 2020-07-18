import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:crypto_wallet_app/widgets/icon-button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login-screen.dart';

class LoginOptionScreen extends StatelessWidget {
  static final String id = 'LoginOptionScreen';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(kBlackColor),
      child: Column(
        children: <Widget>[
          AppBar(
            titleSpacing: 0.0,
            elevation: 10.0,
            backgroundColor: Colors.black,
            title: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                CustomIconButton(
                  title: 'Admin Login',
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, LogInScreen.id);
                  },
                  icon: FontAwesomeIcons.userCog,
                  iconBackgroundColor: Colors.black,
                  iconColor: Colors.white,
                ),
                CustomIconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LogInScreen.id);
                  },
                  backgroundColor: Colors.white,
                  title: 'User Login',
                  titleColor: Colors.black,
                  icon: FontAwesomeIcons.userAlt,
                  iconBackgroundColor: Colors.white,
                  iconColor: Colors.black,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
