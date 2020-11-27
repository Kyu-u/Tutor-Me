import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutor_me/buttons/genderbutton.dart';
import 'package:email_validator/email_validator.dart';
import 'package:tutor_me/services/auth..dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tutor_me/services/database.dart';
import 'package:provider/provider.dart';
import 'package:tutor_me/models/user.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final CollectionReference users = Firestore.instance.collection('users');
  String gender;
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _confirmEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
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
                    TextFormField(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          // labelText: 'Name',
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Name',
                          alignLabelWithHint: false,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      controller: _name,
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          // labelText: 'Name',
                          hintText: 'Confirm E-mail',
                          alignLabelWithHint: false,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      controller: _confirmEmail,
                      validator: (email) =>
                          email != _email.text ? "Invalid email address" : null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          // labelText: 'Name',
                          hintText: 'Password',
                          alignLabelWithHint: false,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      controller: _pass,
                      validator: (password) {
                        Pattern pattern =
                            r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                        RegExp regex = new RegExp(pattern);
                        if (!regex.hasMatch(password))
                          return 'Invalid password';
                        else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          // labelText: 'Name',
                          hintText: 'Confirm password',
                          alignLabelWithHint: false,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      controller: _confirmPass,
                      validator: (value) =>
                          value != _pass.text ? "Invalid password" : null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField<String>(
                      itemHeight: 300,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      isExpanded: true,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Colors.black),
                      // underline: Container(
                      //   color: Colors.white,
                      // ),
                      items: [
                        DropdownMenuItem<String>(
                          child: Text(
                            'Male',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                            ),
                          ),
                          value: 'Male',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Female'),
                          value: 'Female',
                        ),
                      ],
                      validator: (value) =>
                          value == null ? 'Please fill in your gender' : null,
                      onChanged: (String value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      hint: Text('Gender'),
                      value: gender,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          color: HexColor("4ED1A1"),
                          onPressed: () async {
                            // print('adwada');
                            print(_email.text);
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              dynamic result =
                                  await _auth.register(_email.text, _pass.text);
                              print(result.uid);
                              await DatabaseService(uid: result.uid)
                                  .updateName(_name.text);
                              // await DatabaseService(uid: result.uid)
                              //     .updateGender(gender);

                              if (result != null)
                                Navigator.pushNamed(context, '/signup2');
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
