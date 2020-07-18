import 'package:crypto_wallet_app/screens/login-screen.dart';
import 'package:crypto_wallet_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_chart/pie_chart.dart';
import 'login-screen.dart';

class AdminScreen extends StatefulWidget {
  static final String id = 'AdminScreen';
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  getBitcoinChartValue() {
    double val = LogInScreen.bitcoin +
        LogInScreen.bitcoinCash +
        LogInScreen.ether +
        LogInScreen.stellar;
    val = val / 360;
    return LogInScreen.bitcoin * val;
  }

  getEtherChartValue() {
    double val = LogInScreen.bitcoin +
        LogInScreen.bitcoinCash +
        LogInScreen.ether +
        LogInScreen.stellar;
    val = val / 360;
    return LogInScreen.ether * val;
  }

  getBitcoinCashChartValue() {
    double val = LogInScreen.bitcoin +
        LogInScreen.bitcoinCash +
        LogInScreen.ether +
        LogInScreen.stellar;
    val = val / 360;
    return LogInScreen.bitcoinCash * val;
  }

  getStellarChartValue() {
    double val = LogInScreen.bitcoin +
        LogInScreen.bitcoinCash +
        LogInScreen.ether +
        LogInScreen.stellar;
    val = val / 360;
    return LogInScreen.stellar * val;
  }

  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.black,
  ];
  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Bitcoin", () => getBitcoinChartValue());
    dataMap.putIfAbsent("Ether", () => getEtherChartValue());
    dataMap.putIfAbsent("Bitcoin Cash", () => getBitcoinCashChartValue());
    dataMap.putIfAbsent("Stellar", () => getStellarChartValue());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(kBlackColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.black,
            leading: Image.asset(
              'assets/images/logo.png',
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Admin Panel',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, LogInScreen.id);
                    },
                    child: Icon(FontAwesomeIcons.signOutAlt),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Text(
              'Balances',
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
          ),
          Stack(
            children: <Widget>[
              PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32.0,
                chartRadius: MediaQuery.of(context).size.width / 2,
                showChartValuesInPercentage: false,
                showChartValues: false,
                showChartValuesOutside: false,
                chartValueBackgroundColor: Colors.grey[200],
                colorList: colorList,
                showLegends: false,
                legendPosition: LegendPosition.bottom,
                decimalPlaces: 1,
                showChartValueLabel: false,
                initialAngle: 0,
                chartValueStyle: defaultChartValueStyle.copyWith(
                  color: Color(kBlackColor),
                ),
                chartType: ChartType.ring,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 270, horizontal: 20),
                      height: 50,
                      width: 50,
                      child: Material(
                        color: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: 'Enter new Value',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                                style: TextStyle(color: Colors.white),
                                onChanged: (value) {
                                  setState(() {
                                    LogInScreen.usd = double.parse(value);
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    LogInScreen.totalEarned =
                                        LogInScreen.totalEarned +
                                            double.parse(value);
                                  });
                                },
                                keyboardType: TextInputType.number,
                              ),
                              MaterialButton(
                                minWidth: 60,
                                color: Colors.blue,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 95),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '\$${LogInScreen.usd}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 270, horizontal: 20),
                        height: 50,
                        width: 50,
                        child: Material(
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: 'Enter new Value',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  onChanged: (value) {
                                    setState(() {
                                      LogInScreen.bitcoin = double.parse(value);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                MaterialButton(
                                  minWidth: 60,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Colors.orange,
                          height: 5,
                          width: 70,
                        ),
                        Text(
                          'Bitcoin',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '\$${LogInScreen.usd}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          '${LogInScreen.bitcoin} BTC',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 270, horizontal: 20),
                        height: 50,
                        width: 50,
                        child: Material(
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: 'Enter new Value',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  onChanged: (value) {
                                    setState(() {
                                      LogInScreen.ether = double.parse(value);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                MaterialButton(
                                  minWidth: 60,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Colors.indigo,
                          height: 5,
                          width: 70,
                        ),
                        Text(
                          'Ether',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '\$${LogInScreen.usd}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          '${LogInScreen.ether} ETH',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 270, horizontal: 20),
                        height: 50,
                        width: 50,
                        child: Material(
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: 'Enter new Value',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  onChanged: (value) {
                                    setState(() {
                                      LogInScreen.bitcoinCash =
                                          double.parse(value);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                MaterialButton(
                                  minWidth: 60,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Colors.green,
                          height: 5,
                          width: 70,
                        ),
                        Text(
                          'Bitcoin Cash',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '\$${LogInScreen.usd}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          '${LogInScreen.bitcoinCash} BCH',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 270, horizontal: 20),
                        height: 50,
                        width: 50,
                        child: Material(
                          color: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: 'Enter new Value',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  onChanged: (value) {
                                    setState(() {
                                      LogInScreen.stellar = double.parse(value);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                MaterialButton(
                                  minWidth: 60,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Colors.black,
                          height: 5,
                          width: 70,
                        ),
                        Text(
                          'Stellar',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '\$${LogInScreen.usd}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          '${LogInScreen.stellar} XLM',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
