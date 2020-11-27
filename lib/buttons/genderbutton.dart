import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  // final CollectionReference reference = Firestore.instance.collection("users");

  String gender;
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
          value: 'Male',
        ),
        DropdownMenuItem<String>(
          child: Text('Female'),
          value: 'Female',
        ),
      ],
      validator: (value) => value == null ? 'Please fill in your gender' : null,
      onChanged: (String value) {
        setState(() {
          gender = value;
        });
      },
      hint: Text('Gender'),
      value: gender,
    );
  }
}
