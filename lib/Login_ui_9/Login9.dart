import 'package:flutter/material.dart';

class Login9 extends StatefulWidget {
  @override
  _Login9State createState() => _Login9State();
}

class _Login9State extends State<Login9> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 400.0,
            child: Stack(
              children: [
                Positioned(
                  width: width,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/background1.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  width: width + 10,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/background-2.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
