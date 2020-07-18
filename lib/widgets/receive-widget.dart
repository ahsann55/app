import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom-button.dart';
import 'custom-text-fields.dart';

class ReceiveWidget extends StatefulWidget {
  @override
  _ReceiveWidgetState createState() => _ReceiveWidgetState();
}

class _ReceiveWidgetState extends State<ReceiveWidget> {
  String dropdownValue = 'Bitcoin';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.black),
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
                'Bitcoin',
                'Ether',
                'Bitcoin Cash',
                'Stellar',
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
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: Wrap(
            children: <Widget>[
              Text(
                'Tap to copy this address. Share it with the sender via email or text.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(
            FontAwesomeIcons.qrcode,
            size: 150,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Text(
            '15erslfT5WG35135f5BDETjh612dfghFDfgD542dw',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: dropdownValue == 'Bitcoin'
              ? Column(
                  children: <Widget>[
                    Row(
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
                  ],
                )
              : SizedBox(),
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
