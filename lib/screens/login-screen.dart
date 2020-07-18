import 'package:crypto_wallet_app/screens/admin-screen.dart';
import 'package:crypto_wallet_app/screens/home-screen.dart';
import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:crypto_wallet_app/widgets/custom-button.dart';
import 'package:crypto_wallet_app/widgets/custom-textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({this.title});
  final String title;
  static final String id = 'LogInScreen';
  static double bitcoin = 0;
  static double ether = 0;
  static double bitcoinCash = 0;
  static double stellar = 0;
  static double usd = 0;
  static double totalEarned = 0;

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(kBlackColor),
      child: Column(
        children: <Widget>[
          AppBar(
            elevation: 10,
            backgroundColor: Colors.black,
            title:
                Text(widget.title != null ? widget.title + 'Login' : 'Login'),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                if (widget.title == null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(title: 'Admin '),
                    ),
                  );
                }
              },
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  CustomTextField(
                    hintText: 'Enter your Email',
                    keyboard: TextInputType.emailAddress,
                    icon: FontAwesomeIcons.solidEnvelope,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Password',
                    keyboard: TextInputType.text,
                    icon: FontAwesomeIcons.lock,
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      children: <Widget>[
                        CustomButton(
                          backgroundColor: Colors.blue,
                          onPressed: () {
                            if (widget.title == null) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                      bitcoin: LogInScreen.bitcoin,
                                      bitcoinCash: LogInScreen.bitcoinCash,
                                      ether: LogInScreen.ether,
                                      stellar: LogInScreen.stellar,
                                      usd: LogInScreen.usd,
                                      totalEarned: LogInScreen.totalEarned,
                                    ),
                                  ));
                            } else {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdminScreen(),
                                  ));
                            }
                          },
                          titleColor: Colors.white,
                          title: 'Login',
                          width: 150,
                          height: 45,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
