import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen19 extends StatefulWidget {
  @override
  _WelcomeScreen19State createState() => _WelcomeScreen19State();
}

class _WelcomeScreen19State extends State<WelcomeScreen19> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0041C4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Size.height * .5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Welcome19.png"))),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Manage your expenses",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Seamlessly & intuitively",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10.0),
                      Image(
                        image: AssetImage("assets/images/google.png"),
                      ),
                      SizedBox(width: 24.0),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In with Google",
                          style: TextStyle(
                            color: Color(0xFF0041C4),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
