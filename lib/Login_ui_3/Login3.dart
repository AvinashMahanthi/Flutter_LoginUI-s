import 'package:flutter/material.dart';
import 'SignUp3.dart';

class LoginPage3 extends StatefulWidget {
  @override
  _LoginPage3State createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  Widget _buildWelcomeTxt3() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 40.0,
              letterSpacing: 1.2,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Welcome Back",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.white70),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _BuildPwdTF3() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }

  Widget _buildEmailTF3() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200])),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Email or phone number",
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildSignUpBtn3() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUP3()));
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "don't have an account?",
            style: TextStyle(fontSize: 18.0, color: Colors.black)),
        TextSpan(
            text: "SignIn",
            style: TextStyle(fontSize: 18.0, color: Colors.orange)),
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
            _buildWelcomeTxt3(),
            Expanded(
              child: Container(
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
                              offset: Offset(0, 2),
                              blurRadius: 30.0,
                              color: Color.fromRGBO(225, 95, 27, .3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            _buildEmailTF3(),
                            _BuildPwdTF3(),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      GestureDetector(
                        onTap: () {},
                        child: Text("Forget password?",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
