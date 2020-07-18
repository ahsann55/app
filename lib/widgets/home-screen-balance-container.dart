import 'package:flutter/material.dart';

import 'circle-painter.dart';

class HomeScreenBalanceContainer extends StatefulWidget {
  HomeScreenBalanceContainer(
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
  _HomeScreenBalanceContainerState createState() =>
      _HomeScreenBalanceContainerState();
}

class _HomeScreenBalanceContainerState
    extends State<HomeScreenBalanceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 3),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Total Balance',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\$${widget.usd}',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\$${widget.totalEarned} (Earned)',
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
          SizedBox(
            width: 50,
            height: 50,
            child: CustomPaint(
              painter: CirclePainter(),
            ),
          ),
        ],
      ),
    );
  }
}
