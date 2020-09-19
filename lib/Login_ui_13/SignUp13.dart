import 'package:flutter/material.dart';

class SignUp13 extends StatefulWidget {
  @override
  _SignUp13State createState() => _SignUp13State();
}

class _SignUp13State extends State<SignUp13> {
  Widget _buildDesign() {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 500.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                color: Colors.deepPurpleAccent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/1.png"),
                )),
          ),
          Container(
            height: 430.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.scaleDown,
              image: AssetImage("assets/images/Exercise13.png"),
            )),
          ),
          Positioned(
            top: 400,
            left: 30.0,
            child: Text(
              "Sports Activity\nplatform",
              style: TextStyle(
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPwdTf13() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        labelText: "password",
      ),
    );
  }

  Widget _buildusernameTf13() {
    return TextField(
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        labelText: "User name",
      ),
    );
  }

  Widget _buildphTf13() {
    return TextField(
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        labelText: "Phone number",
      ),
    );
  }

  Widget _buildSignUpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Sign-Up",
          style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.w600,
              fontSize: 30.0),
        ),
        CircleAvatar(
          backgroundColor: Colors.deepPurpleAccent,
          radius: 30,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _buildDesign(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    _buildusernameTf13(),
                    SizedBox(height: 20.0),
                    _buildPwdTf13(),
                    SizedBox(height: 20.0),
                    _buildphTf13(),
                    SizedBox(height: 30.0),
                    _buildSignUpRow(),
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Already had an account?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.wavy,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
