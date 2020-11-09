
import 'package:flutter/material.dart';
import 'package:tutor_me/pages/landing_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => LandingPage(),
  },
));


