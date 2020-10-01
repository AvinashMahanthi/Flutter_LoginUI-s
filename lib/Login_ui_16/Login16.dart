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
      appBar: AppBar(
        backgroundColor: Color(0xFF6E4BAF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: Size.height,
        width: Size.width,
        decoration: kboxDecouration,
        child: Stack(
          children: [
            Positioned(
              bottom: 10.0,
              child: Image(
                image: AssetImage("assets/images/white_buildings.png"),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Your's Destination is\nour Destiny",
                      style: TextStyle(
                          fontSize: 36.0,
                          letterSpacing: 1.2,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 36.0,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Your Email",
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Your Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
