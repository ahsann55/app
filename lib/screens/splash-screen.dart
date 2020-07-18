import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'starting-screen.dart';

class MySplashScreen extends StatelessWidget {
  static final String id = 'MySplashScreen';
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: StartingScreen.id,
      image: Image.asset('./assets/images/logo.png'),
      backgroundColor: Color(kBlackColor),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 188,
      loaderColor: Colors.blue,
    );
  }
}
