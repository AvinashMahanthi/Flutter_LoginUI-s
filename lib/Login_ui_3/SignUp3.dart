import 'package:flutter/material.dart';
import 'constants3.dart';

class SignUP3 extends StatefulWidget {
  @override
  _SignUP3State createState() => _SignUP3State();
}

class _SignUP3State extends State<SignUP3> {
  Widget _buildSignUpTxt() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            "SignUp",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 40.0,
                letterSpacing: 1.5),
          ),
          SizedBox(height: 10.0),
          Text(
            "Create Account",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                letterSpacing: 1.5),
          )
        ],
      ),
    );
  }

  Widget BuildReenterPwdTF3() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "ReEnter Password",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }

  Widget _buildSignInTxt() {
    return GestureDetector(
      onTap: () {},
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Already have an account.",
            style: TextStyle(color: Colors.black)),
        TextSpan(text: "Login", style: TextStyle(color: Colors.orange)),
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80.0),
            _buildSignUpTxt(),
            SizedBox(height: 40.0),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                        topRight: Radius.circular(60.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40.0),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 30.0,
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                buildEmailTF3(),
                                Container(
                                  decoration: kboxDecouration3,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: kboxDecouration3,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "User name",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: kboxDecouration3,
                                        padding: EdgeInsets.all(10.0),
                                        child: TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "Password",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                      BuildReenterPwdTF3()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40.0),
                          buildSignUpBtn3(),
                          SizedBox(height: 15.0),
                          Text("Or SignUp with",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.grey)),
                          SizedBox(height: 20.0),
                          bulildSocialmediaRow(),
                          SizedBox(height: 30.0),
                          _buildSignInTxt()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
