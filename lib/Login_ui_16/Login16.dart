import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login16 extends StatefulWidget {
  @override
  _Login16State createState() => _Login16State();
}

class _Login16State extends State<Login16> {
  final kboxDecouration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFF6E4BAF),
        const Color(0xFF523EA4),
        const Color(0xFF513DA3)
      ], // whitish to gray
    ),
  );

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: Size.height,
        width: Size.width,
        decoration: kboxDecouration,
        child: Stack(
          children: [],
        ),
      ),
    );
  }
}
