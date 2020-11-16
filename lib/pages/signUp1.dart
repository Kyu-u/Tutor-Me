import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutor_me/buttons/genderbutton.dart';
import 'package:email_validator/email_validator.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _confirmEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: HexColor("6088f6"),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 40, 5),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 40,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            // labelText: 'Name',
                            hintText: 'Name',
                            alignLabelWithHint: false,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        validator: (String name) {
                          Pattern pattern =
                              r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                          RegExp regex = new RegExp(pattern);
                          if (!regex.hasMatch(name))
                            return 'Invalid username';
                          else
                            return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(

                            // labelText: 'Name',
                            hintText: 'E-mail',
                            alignLabelWithHint: false,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        controller: _email,
                        validator: (String email) =>
                            EmailValidator.validate(email)
                                ? null
                                : "Invalid email address",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            // labelText: 'Name',
                            hintText: 'Confirm E-mail',
                            alignLabelWithHint: false,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        controller: _confirmEmail,
                        validator: (email) => email == _email.text
                            ? null
                            : "Invalid email address",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            // labelText: 'Name',
                            hintText: 'Password',
                            alignLabelWithHint: false,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        controller: _pass,
                        validator: (String value) {
                          return value.isEmpty ? 'Please enter a name' : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            // labelText: 'Name',
                            hintText: 'Confirm password',
                            alignLabelWithHint: false,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                        controller: _confirmPass,
                        validator: (String value) {
                          return value.isEmpty ? 'Please enter a name' : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Gender(),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          color: HexColor("4ED1A1"),
                          onPressed: () {
                            // print('adwada');
                            print(_email.text);
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                            }
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
