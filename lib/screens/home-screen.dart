import 'dart:math';

import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:crypto_wallet_app/widgets/activity-widget.dart';
import 'package:crypto_wallet_app/widgets/custom-button.dart';
import 'package:crypto_wallet_app/widgets/receive-widget.dart';
import 'package:crypto_wallet_app/widgets/send-widget.dart';
import 'package:crypto_wallet_app/widgets/swap-widget.dart';
import 'package:crypto_wallet_app/widgets/side-drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:crypto_wallet_app/widgets/home-widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(
      {this.bitcoin,
      this.bitcoinCash,
      this.ether,
      this.stellar,
      this.usd,
      this.totalEarned});
  static final String id = 'HomeScreen';
  final double bitcoin;
  final double ether;
  final double bitcoinCash;
  final double stellar;
  final double usd;
  final double totalEarned;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String getTitleText() {
    if (_selectedIndex == 2) {
      return 'Dashboard';
    } else if (_selectedIndex == 1) {
      return 'New Swap';
    } else if (_selectedIndex == 3) {
      return 'Send';
    } else if (_selectedIndex == 4) {
      return 'Receive';
    } else {
      return 'Activity';
    }
  }

  widgetToBuild() {
    if (_selectedIndex == 1) {
      return Padding(
        padding: EdgeInsets.fromLTRB(35, 150, 35, 0),
        child: Column(
          children: <Widget>[
            Text(
              'Successfully Verified!',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            SizedBox(
              height: 300,
            ),
            CustomButton(
              height: 50,
              title: 'Proceed',
              backgroundColor: Colors.black,
              titleColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SwapWidget(
                      title: getTitleText(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
    } else if (_selectedIndex == 0) {
      return ActivityWidget();
    } else if (_selectedIndex == 2) {
      return HomeWidget(
        stellar: widget.stellar,
        ether: widget.ether,
        bitcoinCash: widget.bitcoinCash,
        bitcoin: widget.bitcoin,
        usd: widget.usd,
        totalEarned: widget.totalEarned,
      );
    } else if (_selectedIndex == 3) {
      return SendWidget();
    } else if (_selectedIndex == 4) {
      return ReceiveWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBlackColor),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              getTitleText(),
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                FontAwesomeIcons.qrcode,
                size: 22,
              ),
            ),
          ],
        ),
        elevation: 10,
        titleSpacing: 10.0,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          elevation: 10,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              title: Text('Activity'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              title: Text('Swap'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidPaperPlane,
                size: 20,
              ),
              title: Text('Send'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.download,
                size: 20,
              ),
              title: Text('Receive'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
      body: widgetToBuild(),
    );
  }
}
