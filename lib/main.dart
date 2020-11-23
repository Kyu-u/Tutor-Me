import 'package:flutter/material.dart';
import 'package:tutor_me/pages/editProfile2.dart';
import 'package:tutor_me/pages/landing_page.dart';
import 'package:tutor_me/pages/signUp1.dart';
import 'package:tutor_me/pages/signUp2.dart';
import 'package:tutor_me/pages/signin.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => EditProfile2(),
        // '/signup1': (context) => SignUp1(),
        // '/signup2': (context) => SignUp2(),
      },
    ));
