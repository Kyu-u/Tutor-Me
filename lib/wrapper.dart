import 'package:provider/provider.dart';
import 'package:tutor_me/pages/signin.dart';
import 'package:flutter/material.dart ';
import 'package:tutor_me/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return SignIn();
  }
}
