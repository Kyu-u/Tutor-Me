import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutor_me/buttons/signIn_button.dart';
class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SignInButton(
                onPressed: () {
                  print(" ");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}