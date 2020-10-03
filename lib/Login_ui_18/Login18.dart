import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'SignUp18.dart';

class Login18 extends StatefulWidget {
  @override
  _Login18State createState() => _Login18State();
}

class _Login18State extends State<Login18> {
  Widget _buildLoginBtn() {
    final Size = MediaQuery.of(context).size;
    return Container(
      width: Size.width * .60,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildSocbtn(child) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
          child: child),
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp18()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.grey[500],
              )),
          TextSpan(
              text: "SignUp",
              style: TextStyle(
                color: Colors.black87,
              ))
        ]),
      ),
    );
  }

  Widget _buildSocMedBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocbtn(
          SvgPicture.asset(
            "assets/images/facebook.svg",
            height: 20,
            color: Colors.blue,
            width: 20,
          ),
        ),
        _buildSocbtn(
          SvgPicture.asset(
            "assets/images/google-plus.svg",
            height: 20,
            color: Colors.red,
            width: 20,
          ),
        ),
        _buildSocbtn(
          SvgPicture.asset(
            "assets/images/twitter.svg",
            height: 20,
            color: Colors.blue,
            width: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTf() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.mail_outline,
          color: Colors.blue,
        ),
        suffixIcon: Icon(
          Icons.verified_user,
          color: Colors.blue,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1.2),
        ),
      ),
    );
  }

  _buildPasswordTF() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.remove_red_eye),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6C63FE), width: 1.2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
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
                  height: 300.0,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset("assets/images/Login18.svg"),
                ),
                SizedBox(height: 20.0),
                _buildEmailTf(),
                SizedBox(height: 30.0),
                _buildPasswordTF(),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "forgot password?",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0),
                    )
                  ],
                ),
                SizedBox(height: 25.0),
                _buildLoginBtn(),
                SizedBox(height: 26.0),
                Text(
                  "Login via OTP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 20.0),
                _buildSocMedBtn(),
                SizedBox(height: 40.0),
                _buildSignUpTxt(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
