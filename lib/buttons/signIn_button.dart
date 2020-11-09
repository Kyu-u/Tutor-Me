import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/foundation.dart';

class SignInButton extends StatelessWidget {

  SignInButton({@required this.onPressed});
  GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      splashColor: Colors.grey,
      shape: StadiumBorder(),
      child: Text(
        'Sign in',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
