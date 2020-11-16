import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Text(
              'Male',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
            ),
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
      ),
    );
  }
}
