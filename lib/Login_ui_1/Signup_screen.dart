import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_1/Login_screen.dart';
import 'constants1.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  Widget _buildNameTF() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecourationStyle,
      height: 60.0,
      child: TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: "Enter Name",
            hintStyle: kHintTextStyle),
      ),
    );
  }

  Widget _buildPhTF() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecourationStyle,
      height: 60.0,
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          hintText: "Enter Phone Number",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _buildRePasswordTF() {
    return Container(
      decoration: kBoxDecourationStyle,
      height: 60.0,
      alignment: Alignment.centerLeft,
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: "Confirm Password",
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _buildRegisterBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          elevation: 10.0,
          onPressed: () {
            //Implement login functionality.
          },
          minWidth: 350.0,
          height: 42.0,
          child: Text(
            'Register',
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                letterSpacing: 1.5),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInbtn() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginUI1()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Already have an account? ",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w100),
          ),
          TextSpan(
            text: "SignIn",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
            )),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Center(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Full Name", style: klableStyle),
                          SizedBox(height: 10.0),
                          _buildNameTF(),
                          SizedBox(height: 30.0),
                          Text("Phone Number", style: klableStyle),
                          SizedBox(height: 10.0),
                          _buildPhTF(),
                          SizedBox(height: 30.0),
                          Text("Email", style: klableStyle),
                          SizedBox(height: 10.0),
                          buildEmailTF(),
                          SizedBox(height: 30.0),
                          Text("Password", style: klableStyle),
                          SizedBox(height: 10.0),
                          buildPasswordTF(),
                          SizedBox(height: 30.0),
                          Text("Confirm Password", style: klableStyle),
                          SizedBox(height: 10.0),
                          _buildRePasswordTF(),
                          SizedBox(height: 30.0),
                          _buildRegisterBtn(),
                          SizedBox(height: 30.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[_buildSignInbtn()],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
