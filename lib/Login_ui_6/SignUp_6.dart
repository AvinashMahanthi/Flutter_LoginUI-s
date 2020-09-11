import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_6/LoginPage_6.dart';
import 'constants.dart';

class SignUp6 extends StatefulWidget {
  @override
  _SignUp6State createState() => _SignUp6State();
}

class _SignUp6State extends State<SignUp6> {
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

  Widget _buildPhTf6() {
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
          hintText: "Phone number",
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

  Widget _buildSignIntxt6() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage6()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already have an account? ",
              style: TextStyle(color: Colors.grey, fontSize: 15.90)),
          TextSpan(
              text: "Login",
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
              buildDesign("Sign Up"),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
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
                            _buildPhTf6(),
                            _buildPwdTF6(),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      buildLoginBtn6("Sign Up"),
                      SizedBox(height: 20.0),
                      _buildSignIntxt6()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
