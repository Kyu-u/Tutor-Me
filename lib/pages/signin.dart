import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
        backgroundColor: HexColor("6088f6"),
        body: SafeArea(
          child: ListView(
            children: [
              Center(
                  child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child:
                            Image(image: AssetImage('assets/images/logo.png')),
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      TextFormField(
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'E-mail',
                            labelStyle: TextStyle(color: Colors.white),
                            // hintText: 'Name',
                            // alignLabelWithHint: false,
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white))),
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => node.nextFocus(),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
