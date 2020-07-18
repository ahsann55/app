import 'package:crypto_wallet_app/screens/login-option-screen.dart';
import 'package:crypto_wallet_app/screens/login-screen.dart';
import 'package:crypto_wallet_app/screens/signup-screen.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:crypto_wallet_app/widgets/custom-button.dart';

class StartingScreen extends StatelessWidget {
  static final String id = 'StartingScreen';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(kBlackColor),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Welcome to Trezor BTC',
                      style:
                          TextStyle(fontSize: 18, color: Colors.blueGrey[100]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Easier way to send, receive and store your digital currencies',
                      style:
                          TextStyle(fontSize: 15, color: Colors.blueGrey[100]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    backgroundColor: Colors.blue,
                    title: 'Create an Account',
                  ),
                  CustomButton(
                    title: 'Login',
                    backgroundColor: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, LogInScreen.id);
                    },
                  ),
                  CustomButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    title: 'Recover Funds',
                    titleColor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
