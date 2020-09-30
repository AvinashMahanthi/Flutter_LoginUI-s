import 'package:flutter/material.dart';

class Login15 extends StatefulWidget {
  @override
  _Login15State createState() => _Login15State();
}

class _Login15State extends State<Login15> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              child: Image(
                height: Size.height * 0.3,
                width: Size.width,
                image: AssetImage("assets/images/Login!4.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
