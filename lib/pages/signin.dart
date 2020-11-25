import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:tutor_me/services/auth..dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  final AuthService _auth = AuthService();

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Image(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                          height: 300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
                        child: TextFormField(
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
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
                        child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          obscureText: _obscureText,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: new UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              // hintText: 'Name',

                              alignLabelWithHint: false,
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.white))),
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        color: Colors.white,
                        onPressed: () async {
                          dynamic result = await _auth.signInAnon();
                          if (result == null) {
                            print("error signing i");
                          } else {
                            print("signed in");
                            print(result.uid);
                          }
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor("6088f6"),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(105, 15, 105, 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
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
