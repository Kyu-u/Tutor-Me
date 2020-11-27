import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  String status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("6088f6"),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I'm a...",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      status = 'Student';

                      Navigator.pushNamed(context, '/home1');
                    });
                  },
                  child: Text(
                    "College Student",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: HexColor("6088f6"),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  height: 15,
                ),
                FlatButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      status = 'Tutor';
                      Navigator.pushNamed(context, '/home1');
                    });
                  },
                  child: Text(
                    "Tutor",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: HexColor("6088f6"),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(105, 15, 105, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
          ),
        ));
  }
}
