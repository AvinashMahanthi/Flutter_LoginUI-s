import 'package:flutter/material.dart';

Color primaryColor = Color(0xffedd3cb);
Color darkPrimaryColor = Color(0xff6f3d2e);

final kPhBoxdecouration = BoxDecoration(
  boxShadow: [
    BoxShadow(
        color: Color(0xff6f3d2e).withOpacity(0.5),
        offset: Offset(5, 10),
        spreadRadius: 3,
        blurRadius: 10),
    BoxShadow(
        color: Colors.white,
        offset: Offset(-3, -4),
        spreadRadius: -2,
        blurRadius: 20)
  ],
  color: Color(0xffedd3cb),
  borderRadius: BorderRadius.circular(40),
);

Widget buildBtn21(icon, String text) {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: kPhBoxdecouration,
        child: Icon(
          icon,
          color: darkPrimaryColor,
        ),
      ),
      SizedBox(height: 10.0),
      Text(text),
    ],
  );
}
