import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_6/SignUp_6.dart';
import 'constants.dart';
import 'package:loginui/FadeAnimation.dart';

class LoginPage6 extends StatefulWidget {
  @override
  _LoginPage6State createState() => _LoginPage6State();
}

class _LoginPage6State extends State<LoginPage6> {
  Widget _buildEmailTf6() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
          ),
        ),
      ),
      padding: EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Email",
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }

  Widget _buildPwdTF6() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
          ),
        ),
      ),
      padding: EdgeInsets.all(8.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }

  Widget _buildForgetpwdBtn6() {
    return Padding(
      padding: const EdgeInsets.only(left: 210.0),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "Forget password?",
          style: TextStyle(
            color: Color(0xFF5862CC),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUptxt6() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp6()));
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
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                buildDesign("Login"),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                        1.3,
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, 3),
                                    blurRadius: 18.0,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              _buildEmailTf6(),
                              _buildPwdTF6(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      FadeAnimation(1.5, _buildForgetpwdBtn6()),
                      SizedBox(height: 30.0),
                      buildLoginBtn6("Login"),
                      SizedBox(height: 30.0),
                      FadeAnimation(1.6, _buildSignUptxt6()),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
