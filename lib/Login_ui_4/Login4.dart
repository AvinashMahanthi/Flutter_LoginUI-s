import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_4/SignUp4.dart';

class LoginPage4 extends StatefulWidget {
  @override
  _LoginPage4State createState() => _LoginPage4State();
}

class _LoginPage4State extends State<LoginPage4> {
  Widget _buildWelcomeTxt() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome,",
            style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Sign in to continue!",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildEmailIdTF4() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Color(0xFFE45141), width: 2.0)),
          labelText: "Email Id",
          labelStyle: TextStyle(color: Color(0xFFE45141), fontSize: 18.0)),
    );
  }

  Widget _buildPwdTF4() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Color(0xFFE45141), width: 2.0),
        ),
        labelText: "password",
        labelStyle: TextStyle(
          color: Color(0xFFE45141),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _forgetPasswordTxt4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Text(
            "Forget password?",
            style: TextStyle(color: Color(0xFFE45141), fontSize: 15.0),
          ),
        )
      ],
    );
  }

  Widget _buildLoginBtn4() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.orange,
            ])),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      ),
    );
  }

  Widget _buildFbBtn() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xFFCADEF5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                      image:
                          AssetImage("assets/images/768px-Facebook_icon.png")),
                  SizedBox(width: 10.0),
                  Text(
                    "Connect with facebook",
                    style: TextStyle(color: Colors.blue, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUpTxt4() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp4()));
      },
      child: Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "I'am a new user, ",
                style: TextStyle(color: Colors.grey, fontSize: 20.0)),
            TextSpan(
                text: "Sign Up",
                style: TextStyle(color: Color(0xFFE45141), fontSize: 20.0))
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 70.0),
                _buildWelcomeTxt(),
                SizedBox(height: 70.0),
                _buildEmailIdTF4(),
                SizedBox(height: 15.0),
                _buildPwdTF4(),
                SizedBox(height: 15.0),
                _forgetPasswordTxt4(),
                SizedBox(height: 40.0),
                _buildLoginBtn4(),
                SizedBox(height: 15.0),
                _buildFbBtn(),
                SizedBox(height: 200.0),
                _buildSignUpTxt4()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
