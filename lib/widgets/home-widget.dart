import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home-screen-balance-container.dart';
import 'home-screen-coin-price-container.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget(
      {this.bitcoin,
      this.bitcoinCash,
      this.ether,
      this.stellar,
      this.usd,
      this.totalEarned});
  final double bitcoin;
  final double ether;
  final double bitcoinCash;
  final double stellar;
  final double usd;
  final double totalEarned;
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeScreenBalanceContainer(
          totalEarned: widget.totalEarned,
          usd: widget.usd,
        ),
        HomeScreenCoinPriceContainer(
          coinLogo: Icon(
            FontAwesomeIcons.bitcoin,
            color: Colors.orange,
          ),
          coin: 'BTC',
          coinName: 'Bitcoin',
          ownedDollars: widget.usd,
          ownedCoins: widget.bitcoin,
        ),
        HomeScreenCoinPriceContainer(
          coinLogo: Icon(
            FontAwesomeIcons.ethereum,
            color: Colors.indigo,
          ),
          ownedCoins: widget.ether,
          ownedDollars: widget.usd,
          coinName: 'Ether',
          coin: 'ETH',
        ),
        HomeScreenCoinPriceContainer(
          coinLogo: CircleAvatar(
            radius: 13,
            backgroundColor: Colors.black,
            child: Image.asset(
              'assets/images/bitcoin-cash-logo.png',
            ),
          ),
          ownedCoins: widget.bitcoinCash,
          ownedDollars: widget.usd,
          coinName: 'Bitcoin Cash',
          coin: 'BCH',
        ),
        HomeScreenCoinPriceContainer(
          coinLogo: CircleAvatar(
            radius: 13,
            backgroundColor: Colors.black,
            child: Image.asset(
              'assets/images/stellar-logo.png',
            ),
          ),
          ownedCoins: widget.stellar,
          ownedDollars: widget.usd,
          coinName: 'Stellar',
          coin: 'XLM',
        ),
      ],
    );
  }
}
