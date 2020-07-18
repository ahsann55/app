import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatePinScreen extends StatelessWidget {
  static final String id = 'CreatePinScreen';
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
        ],
      ),
    );
  }
}
