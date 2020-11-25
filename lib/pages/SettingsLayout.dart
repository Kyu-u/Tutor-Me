import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

double custFontSize = 15;

// void changeFontSize() async {
//   setState(() {
//     custFontSize += 2;
//   });
// }

int _value = 0;

class _SettingsState extends State<Settings> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 80.0, 0.0),
            child: FlatButton(
              onPressed: () {
                print('beck');
              },
              child: Text(
                'Back',
                style: TextStyle(
                  color: HexColor("e6e6e6"),
                ),
              ),
              color: HexColor("c92e2a"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: HexColor("e6e6e6"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 50.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Container(
                  height: 30,
                  width: 200,
                  // color: Colors.grey,
                  child: Text(
                    'Font Size',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: HexColor("e6e6e6"),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                new DropdownButton(
                    value: _value,
                    items: <DropdownMenuItem<int>>[
                      new DropdownMenuItem(
                        child: new Text(
                          'Small',
                          style: TextStyle(
                              color: HexColor("000000"),
                              fontFamily: 'Montserrat',
                              fontSize: custFontSize),
                        ),
                        value: 0,
                      ),
                      new DropdownMenuItem(
                        child: new Text(
                          'Medium',
                          style: TextStyle(
                              color: HexColor("000000"),
                              fontFamily: 'Montserrat',
                              fontSize: custFontSize + 2),
                        ),
                        value: 1,
                      ),
                      new DropdownMenuItem(
                        child: new Text(
                          'Large',
                          style: TextStyle(
                              color: HexColor("000000"),
                              fontFamily: 'Montserrat',
                              fontSize: custFontSize + 4),
                        ),
                        value: 2,
                      )
                    ],
                    onChanged: (int value) {
                      setState(() {
                        _value = value;
                      });
                    }),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                child: Text(
                  'Bold Text',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: HexColor("e6e6e6")),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 23.0, 0.0),
                  child: new SwitchListTile(
                    value: _enabled,
                    onChanged: (bool value) {
                      setState(
                        () {
                          _enabled = value;
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 330.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 350,
                  height: 45,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: HexColor("e6e6e6")),
                    ),
                    color: HexColor("c92e2a"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
