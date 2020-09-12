import 'package:flutter/material.dart';

Widget BuildDesign() {
  return Container(
    height: 200.0,
    child: Stack(
      children: [
        Positioned(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("1.png"), fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    ),
  );
}
