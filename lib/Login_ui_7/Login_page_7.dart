import 'package:flutter/material.dart';
import 'constants.dart';
import 'SignUp7.dart';

class Login7 extends StatefulWidget {
  @override
  _Login7State createState() => _Login7State();
}

class _Login7State extends State<Login7> {
  Widget _buildWelcomeTxf() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello there,",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Welcome back",
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildTetFd() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.grey,
        ),
      )),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.white30, fontSize: 25.0)),
      ),
    );
  }

  Widget _buildSignInbtn7() {
    return Container(
      height: 60.0,
      width: 200.0,
      decoration: BoxDecoration(
          color: Color(0xFFA132BD), borderRadius: BorderRadius.circular(15.0)),
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp7()));
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(color: Colors.grey, fontSize: 15.90)),
        TextSpan(
            text: "Sign Up",
            style: TextStyle(
                color: Color(0xFF5862CC),
                fontSize: 15.90,
                fontWeight: FontWeight.bold)),
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFF22244E),
      body: Column(
        children: [
          BuildDesign(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                _buildWelcomeTxf(),
                SizedBox(height: 30.0),
                Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        )),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Colors.white30, fontSize: 25.0)),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      _buildTetFd(),
                      SizedBox(height: 50.0),
                      Text(
                        "Forget Password?",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                      SizedBox(height: 50.0),
                      _buildSignInbtn7(),
                      SizedBox(height: 50.0),
                      _buildSignUpTxt(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
