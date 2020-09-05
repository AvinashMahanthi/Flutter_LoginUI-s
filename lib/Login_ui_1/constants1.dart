import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final TextStyle klableStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 15.0,
);
final TextStyle kHintTextStyle = TextStyle(
  color: Colors.white54,
);

final kBoxDecourationStyle = BoxDecoration(
    color: Color(0xFF6CA8F1),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      )
    ]);

Widget buildEmailTF() {
  return Container(
    decoration: kBoxDecourationStyle,
    height: 60.0,
    alignment: Alignment.centerLeft,
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.mail,
          color: Colors.white,
        ),
        border: InputBorder.none,
        hintText: "Enter your Email",
        hintStyle: kHintTextStyle,
      ),
    ),
  );
}

Widget buildPasswordTF() {
  return Container(
    decoration: kBoxDecourationStyle,
    height: 60.0,
    alignment: Alignment.centerLeft,
    child: TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.white,
        ),
        border: InputBorder.none,
        hintText: "Enter your Password",
        hintStyle: kHintTextStyle,
      ),
    ),
  );
}
