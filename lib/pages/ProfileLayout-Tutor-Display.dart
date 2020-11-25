import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileLayoutTutorDisplay extends StatefulWidget {
  @override
  _ProfileLayoutTutorDisplayState createState() =>
      _ProfileLayoutTutorDisplayState();
}

class _ProfileLayoutTutorDisplayState extends State<ProfileLayoutTutorDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
        child: Column(
          children: [
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
                    'Gerald Elroy Van Hotten',
                    style: TextStyle(
                      color: HexColor("e6e6e6"),
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/star-2.png'),
                        height: 13,
                        width: 15,
                      ),
                      Image(
                        image: AssetImage('assets/images/star-2.png'),
                        height: 13,
                        width: 15,
                      ),
                      Image(
                        image: AssetImage('assets/images/star-2.png'),
                        height: 13,
                        width: 15,
                      ),
                      Image(
                        image: AssetImage('assets/images/star-2.png'),
                        height: 13,
                        width: 15,
                      ),
                      Image(
                        image: AssetImage('assets/images/star-2.png'),
                        height: 13,
                        width: 15,
                      ),
                    ],
                  ),
                  Text(
                    '~Tutor~',
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
                    height: 10,
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
                        'Female',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/open-book1.png'),
                        height: 23,
                        width: 25,
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      // quotes.map((quote) => Text(quote)).toList(),
                      Text(
                        'Mabar Moonton',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/gpa.png'),
                        height: 25,
                        width: 25,
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/certificate-1.png'),
                        height: 22,
                        width: 25,
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      Text(
                        'Dasar Pemrograman',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/phone-1.png'),
                        height: 22,
                        width: 25,
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      Text(
                        '08123456789',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/calendar-2.png'),
                        height: 22,
                        width: 25,
                      ),
                      Text(
                        ' | ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                      Text(
                        'Sunday, 10.00 WIB - 18.00 WIB',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            color: HexColor("e6e6e6")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
