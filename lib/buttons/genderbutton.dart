import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: [
        DropdownMenuItem<String>(
          child: Text('Male'),
          value: 'one',
        ),
        DropdownMenuItem<String>(
          child: Text('Female'),
          value: 'two',
        ),
      ],
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
