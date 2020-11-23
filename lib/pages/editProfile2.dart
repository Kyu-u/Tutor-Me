import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:email_validator/email_validator.dart';

class EditProfile2 extends StatefulWidget {
  @override
  _EditProfile2State createState() => _EditProfile2State();
}

class _EditProfile2State extends State<EditProfile2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _gpa = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  String _valStatus;
  List _status = ["Undergraduate", "Bachelor", "Graduate"];
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: HexColor("#6088F6"),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {},
                          color: HexColor("#C92E2A"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState.validate()) {}
                            });
                          },
                          color: HexColor("#4ED1A1"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Text(
                            "Done",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/suzy.jpg'),
                        radius: 80,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: RaisedButton(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            'Change Picture',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        onPressed: () {},
                        color: HexColor("#F7C646"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //name
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 38, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Expanded(
                            child: Container(
                              child: TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      hintText: 'Change your name',
                                      hintStyle:
                                          TextStyle(color: HexColor("#CBBDBD")),
                                      alignLabelWithHint: false,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
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
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 38, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 59,
                          ),
                          Expanded(
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                  hintText: 'Change your e-mail',
                                  hintStyle:
                                      TextStyle(color: HexColor("#CBBDBD")),
                                  alignLabelWithHint: false,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => node.nextFocus(),
                              controller: _email,
                              validator: (String email) =>
                                  EmailValidator.validate(email)
                                      ? null
                                      : "Invalid email address",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 38, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Status',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            DropdownButton(
                                value: _valStatus,
                                items: _status
                                    .map((value) => DropdownMenuItem(
                                          child: Text(value),
                                          value: value,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _valStatus = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 38, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'GPA',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Expanded(
                            child: TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'Change GPA',
                                    hintStyle:
                                        TextStyle(color: HexColor("#CBBDBD")),
                                    alignLabelWithHint: false,
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                controller: _gpa,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Please input GPA';
                                  }
                                  final n = num.tryParse(value);
                                  if (n <= 0) {
                                    return 'GPA must be above 0';
                                  } else if (n >= 5) {
                                    return 'GPA must be under 5';
                                  }
                                  return null;
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 38, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'Change Phone Number',
                                    hintStyle:
                                        TextStyle(color: HexColor("#CBBDBD")),
                                    alignLabelWithHint: false,
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                controller: _phone,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please input phone number';
                                  }
                                  return null;
                                }),
                          ),
                        ],
                      ),
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
