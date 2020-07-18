import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'circle-painter.dart';

class HomeScreenCoinPriceContainer extends StatefulWidget {
  HomeScreenCoinPriceContainer({
    this.coinName,
    this.ownedCoins,
    this.ownedDollars,
    this.coinLogo,
    this.coin,
  });
  final String coinName;
  final double ownedDollars;
  final double ownedCoins;
  final Widget coinLogo;
  final String coin;

  @override
  _HomeScreenCoinPriceContainerState createState() =>
      _HomeScreenCoinPriceContainerState();
}

class _HomeScreenCoinPriceContainerState
    extends State<HomeScreenCoinPriceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              widget.coinLogo,
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.coinName,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '\$${widget.ownedDollars}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${widget.ownedCoins}${widget.coin}',
                        style: TextStyle(color: Colors.teal, fontSize: 15),
                      ),
                      Text(
                        ' Today',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
