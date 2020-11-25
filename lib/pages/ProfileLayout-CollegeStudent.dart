import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileLayoutCollegeStudent extends StatefulWidget {
  @override
  _ProfileLayoutCollegeStudentState createState() =>
      _ProfileLayoutCollegeStudentState();
}

class _ProfileLayoutCollegeStudentState
    extends State<ProfileLayoutCollegeStudent> {
  int numbers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () {
                      print('beck');
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: HexColor("ffffff")),
                    ),
                    color: HexColor("c92e2a"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('edet');
                    },
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(color: HexColor("ffffff")),
                    ),
                    color: HexColor("F7C646"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0.0),
              child: CircleAvatar(
                radius: 85,
                backgroundColor: HexColor("e6e6e6"),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/night-sky1.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 13.0, 50.0, 0.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Aji Rindra Fakhrezi Putra Faisal',
                    style: TextStyle(
                      color: HexColor("e6e6e6"),
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    '~College Student~',
                    style: TextStyle(
                      color: HexColor("e6e6e6"),
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: HexColor("e6e6e6"),
              height: 15,
              thickness: 1,
              indent: 28,
              endIndent: 28,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 40.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 25,
                        color: HexColor("e6e6e6"),
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      Text(
                        'moonton69@gmail.com',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 25,
                        color: HexColor("e6e6e6"),
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
