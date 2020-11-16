import 'package:flutter/material.dart';
import 'package:tutor_me/pages/landing_page.dart';
import 'package:tutor_me/pages/signUp1.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/signup1': (context) => SignUp1(),
      },
    ));
