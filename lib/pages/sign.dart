import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/gestures.dart';

class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("tapped");
      };
    return Scaffold(
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup1');
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: HexColor("6088f6"),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 120,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                      )),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                    recognizer: _gestureRecognizer,
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
