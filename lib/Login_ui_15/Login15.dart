import 'package:flutter/material.dart';

class Login15 extends StatefulWidget {
  @override
  _Login15State createState() => _Login15State();
}

class _Login15State extends State<Login15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              child: Image(
                height: MediaQuery.of(context).size.height * .3,
                image: AssetImage("assets/images/signup14.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
