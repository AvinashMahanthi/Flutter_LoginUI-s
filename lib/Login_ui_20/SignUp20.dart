import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp20 extends StatefulWidget {
  @override
  _SignUp20State createState() => _SignUp20State();
}

class _SignUp20State extends State<SignUp20> {
  Widget kbuildTF(String HintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          )
        ],
      ),
      height: 60.0,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: HintText,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginBtn11() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(colors: [
              Color(0xFF22BEBE),
              Colors.greenAccent,
              Color(0xFF22BEBE),
            ])),
        child: Center(
          child: Text(
            "SignUp",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp20()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already a User.",
              style: TextStyle(
                color: Colors.grey,
              )),
          TextSpan(
              text: "SignIn",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF22BEBE),
              ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22BEBE),
      appBar: AppBar(
        backgroundColor: Color(0xFF22BEBE),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Heyy,\nConnect here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35.0,
                ),
              ),
              SvgPicture.asset(
                "assets/images/undraw_unicorn_dp2f.svg",
                height: 150.0,
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 100.0),
                  kbuildTF("Email"),
                  SizedBox(height: 30.0),
                  kbuildTF("Phone no"),
                  SizedBox(height: 30.0),
                  kbuildTF("Password"),
                  SizedBox(height: 30.0),
                  kbuildTF("ConformPassword"),
                  SizedBox(height: 40.0),
                  _buildLoginBtn11(),
                  SizedBox(height: 30.0),
                  _buildSignUpTxt(),
                  SizedBox(height: 42.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
