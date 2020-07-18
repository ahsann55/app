import 'package:crypto_wallet_app/widgets/select-wallet-widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityWidget extends StatefulWidget {
  @override
  _ActivityWidgetState createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'All Wallets',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '\$0.00 USD',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF181B20),
                      ),
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SelectWalletWidget(),
                    ),
                  ),
                );
              },
              leading: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: Icon(
                  FontAwesomeIcons.wallet,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'You have No Activity',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Text(
            'All your transactions will show up here.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        Image.asset(
          'assets/images/crypto-wallet.png',
        ),
      ],
    );
  }
}
