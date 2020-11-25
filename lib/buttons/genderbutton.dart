import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
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
          fontFamily: 'Montserrat', fontSize: 15, color: Colors.black),
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
          value: 'one',
        ),
        DropdownMenuItem<String>(
          child: Text('Female'),
          value: 'two',
        ),
      ],
      validator: (value) => value == null ? 'Please fill in your gender' : null,
      onChanged: (String value) {
        setState(() {
          _value = value;
        });
      },
      hint: Text('Gender'),
      value: _value,
    );
  }
}
