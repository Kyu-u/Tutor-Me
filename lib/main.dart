import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_me/pages/HomeLayoutNew.dart';
import 'package:tutor_me/pages/SettingsLayout.dart';
import 'package:tutor_me/pages/landing_page.dart';
import 'package:tutor_me/pages/signUp1.dart';
import 'package:tutor_me/pages/signUp2.dart';
import 'package:tutor_me/pages/signin.dart';
import 'package:tutor_me/services/auth..dart';
import 'package:tutor_me/wrapper.dart';
import 'package:tutor_me/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(home: Wrapper(), routes: {
        '/home1': (context) => HomeLayout(),
        '/signin': (context) => SignIn(),
        '/settings': (context) => Settings(),
        '/signup1': (context) => SignUp1(),
        '/signup2': (context) => SignUp2(),
      }),
    );
  }
}
