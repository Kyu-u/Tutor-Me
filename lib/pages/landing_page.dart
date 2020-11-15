import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'sign.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    new Timer(const Duration(seconds: 3), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                  child: Image(image: AssetImage('assets/images/logo.png'))),
            ),
            SizedBox(
              height: 120,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'by Bontang Hebat',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Sign(),
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}
