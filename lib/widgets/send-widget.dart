import 'package:crypto_wallet_app/widgets/custom-button.dart';
import 'package:crypto_wallet_app/widgets/custom-text-fields.dart';
import 'package:flutter/material.dart';

class SendWidget extends StatefulWidget {
  @override
  _SendWidgetState createState() => _SendWidgetState();
}

class _SendWidgetState extends State<SendWidget> {
  static int currIndex = 1;
  String dropdownValue = 'My Bitcoin Wallet';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
          child: Text(
            'From',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35, right: 35, top: 5, bottom: 30),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.black,
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.white, fontSize: 16),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>[
                'My Bitcoin Wallet',
                'My Ether Wallet',
                'My Bitcoin Cash Wallet',
                'My Stellar Wallet',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35, right: 35, top: 5, bottom: 5),
          child: Text(
            'To',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CustomSimpleTextField(
            hintText: 'Enter bitcoin Address',
            keyboard: TextInputType.text,
            bottomPadding: 10,
            topPadding: 0.0,
            textColor: Colors.white,
            hintTextColor: Colors.white54,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      'BTC',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: CustomSimpleTextField(
                      hintText: '0',
                      keyboard: TextInputType.number,
                      bottomPadding: 10,
                      topPadding: 0.0,
                      textColor: Colors.white,
                      hintTextColor: Colors.white54,
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      'USD',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: CustomSimpleTextField(
                      hintText: '0.00',
                      keyboard: TextInputType.number,
                      bottomPadding: 10,
                      topPadding: 0.0,
                      textColor: Colors.white,
                      hintTextColor: Colors.white54,
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: SizedBox(
            height: 0,
            child: Divider(
              color: Colors.grey[700],
              thickness: 0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fee',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Regular',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '1+ hour',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: CustomButton(
            height: 40,
            backgroundColor: Colors.black,
            title: 'Continue',
            onPressed: () {},
            titleColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
