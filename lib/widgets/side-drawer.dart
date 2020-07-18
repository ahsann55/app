import 'package:crypto_wallet_app/screens/login-screen.dart';
import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom-list-tile.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        'assets/images/logo.png',
                        gaplessPlayback: true,
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Trezor BTC',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Material(
              color: Color(kBlackColor),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
//                      CustomListTile(
//                        title: 'Earn Money',
//                        icon: FontAwesomeIcons.moneyBillAlt,
//                      ),
//                      CustomListTile(
//                        title: 'Packages',
//                        icon: FontAwesomeIcons.ad,
//                      ),
//                      CustomListTile(
//                        title: 'Deposit Funds',
//                        icon: FontAwesomeIcons.creditCard,
//                      ),
//                      CustomListTile(
//                        title: 'Request Withdraw',
//                        icon: FontAwesomeIcons.spinner,
//                        onTap: () {},
//                      ),
//                      CustomListTile(
//                        title: 'Funds Transfer',
//                        icon: FontAwesomeIcons.exchangeAlt,
//                      ),

                      CustomListTile(
                        title: 'Buy Crypto',
                        icon: FontAwesomeIcons.shoppingCart,
                        onTap: () {},
                      ),
                      CustomListTile(
                        title: 'Backup Funds',
                        icon: FontAwesomeIcons.list,
                        onTap: () {},
                      ),
                      CustomListTile(
                        title: 'Addresses',
                        icon: FontAwesomeIcons.wallet,
                        onTap: () {},
                      ),
                      CustomListTile(
                        title: 'Exchange',
                        icon: FontAwesomeIcons.exchangeAlt,
                      ),
                      CustomListTile(
                        title: 'Airdrops',
                        icon: FontAwesomeIcons.parachuteBox,
                      ),
                      CustomListTile(
                        title: 'Lock box',
                        icon: FontAwesomeIcons.usb,
                        onTap: () {},
                      ),
                      SizedBox(
                        child: Divider(
                          thickness: 0.0,
                          color: Colors.grey[400],
                        ),
                      ),
                      CustomListTile(
                        title: 'Log in to web wallet',
                        icon: FontAwesomeIcons.globeAmericas,
                      ),
                      CustomListTile(
                        title: 'Settings',
                        icon: FontAwesomeIcons.cogs,
                      ),
                      CustomListTile(
                        title: 'Support',
                        icon: FontAwesomeIcons.lifeRing,
                      ),
                      CustomListTile(
                        title: 'Logout',
                        icon: FontAwesomeIcons.signOutAlt,
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LogInScreen.id);
                        },
                      ),
                    ],
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
