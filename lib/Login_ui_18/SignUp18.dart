import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp18 extends StatefulWidget {
  @override
  _SignUp18State createState() => _SignUp18State();
}

class _SignUp18State extends State<SignUp18> {
  Widget _buildEmailTf() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Email",
        prefixIcon: Icon(
          Icons.mail_outline,
          color: Colors.blue,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1.2),
        ),
      ),
    );
  }

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
          "SignUp",
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
          padding: EdgeInsets.all(18.8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
          child: child),
    );
  }

  Widget _buildSocMedBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocbtn(
          SvgPicture.asset(
            "assets/images/facebook.svg",
            height: 15,
            color: Colors.blue,
            width: 15,
          ),
        ),
        _buildSocbtn(
          SvgPicture.asset(
            "assets/images/google-plus.svg",
            height: 15,
            color: Colors.red,
            width: 15,
          ),
        ),
        _buildSocbtn(
          SvgPicture.asset(
            "assets/images/twitter.svg",
            height: 15,
            color: Colors.blue,
            width: 15,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SafeArea(
            child: Column(
              children: [
                Positioned(
                  top: 20.0,
                  left: Size.width * 0.3,
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38.0,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Fill in the details & create your account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 50.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Avinash Mahanthi",
                    hintStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.2),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Phone No.",
                    prefixIcon: Icon(
                      Icons.call,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.2),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                _buildEmailTf(),
                SizedBox(height: 35.0),
                _buildLoginBtn(),
                SizedBox(height: 35.0),
                Text("Or via Social Media",
                    style: TextStyle(
                      color: Colors.grey[500],
                    )),
                SizedBox(height: 15.0),
                _buildSocMedBtn(),
                Container(
                    height: 300.0,
                    decoration: BoxDecoration(),
                    child: SvgPicture.asset("assets/images/SignUp18.svg")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
