import 'package:crypto_wallet_app/screens/create-pin-screen.dart';
import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_app/widgets/custom-text-fields.dart';
import 'package:crypto_wallet_app/widgets/custom-button.dart';

class SignUp extends StatelessWidget {
  static final String id = 'SignUp';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(kBlackColor),
      child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Create an Account',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          CustomSimpleTextField(
            hintText: 'Your Email',
            keyboard: TextInputType.emailAddress,
          ),
          CustomSimpleTextField(
            hintText: 'Password',
            keyboard: TextInputType.text,
            obscureText: true,
          ),
          CustomSimpleTextField(
            hintText: 'Confirm Password',
            keyboard: TextInputType.text,
            obscureText: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: Wrap(
              children: <Widget>[
                Text(
                  'By creating an account, you agree to Trezor BTC\'s',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Terms of Service',
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 16),
                ),
                Text(
                  ' & ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: CustomButton(
              title: 'Continue',
              titleColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, CreatePinScreen.id);
              },
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
