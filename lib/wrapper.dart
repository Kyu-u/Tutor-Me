import 'package:provider/provider.dart';
import 'package:tutor_me/pages/HomeLayoutNew.dart';
import 'package:tutor_me/pages/landing_page.dart';
import 'package:tutor_me/pages/signin.dart';
import 'package:flutter/material.dart ';
import 'package:tutor_me/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return LandingPage();
    } else
      return HomeLayout();
  }
}
