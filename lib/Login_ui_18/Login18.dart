import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login18 extends StatefulWidget {
  @override
  _Login18State createState() => _Login18State();
}

class _Login18State extends State<Login18> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              children: [
                Positioned(
                  top: 20.0,
                  left: Size.width * 0.3,
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38.0,
                        color: Colors.black),
                  ),
                ),
                Container(
                  height: 400.0,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset("assets/images/Login18.svg"),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    suffixIcon: Icon(
                      Icons.verified_user,
                      color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 1.2),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 1.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
