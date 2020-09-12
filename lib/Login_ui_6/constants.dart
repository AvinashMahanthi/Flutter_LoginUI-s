import 'package:flutter/material.dart';
import 'package:loginui/FadeAnimation.dart';

Widget buildDesign(String text) {
  return FadeAnimation(
    1,
    Container(
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("background.png"),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            height: 200,
            width: 80.0,
            left: 30.0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("light-1.png"))),
            ),
          ),
          Positioned(
            width: 80.0,
            height: 150,
            left: 140.0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("light-2.png"))),
            ),
          ),
          Positioned(
            top: 40.0,
            right: 40.0,
            width: 80.0,
            height: 150.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("clock.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200.0,
            right: 90.0,
            width: 200.0,
            height: 200.0,
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  letterSpacing: 1.5,
                  color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildLoginBtn6(String text) {
  return FadeAnimation(
    1,
    Container(
      width: double.maxFinite,
      height: 60.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0), color: Color(0xFF5862CC)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
  );
}
