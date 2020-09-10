import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_5/LoginPage5.dart';

class SignUp5 extends StatefulWidget {
  @override
  _SignUp5State createState() => _SignUp5State();
}

class _SignUp5State extends State<SignUp5> {
  bool radio = true;

  Widget buildUsernameTf5() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.person_outline)),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 2.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(hintText: "User Name"),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPwdTf5() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.lock)),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 2.0, right: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildEmailTf() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.mail_outline)),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 2.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Email"),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTerrmsTxt() {
    return Row(
      children: <Widget>[
        Radio(
            value: radio,
            groupValue: null,
            onChanged: (value) {
              setState(() {
                radio = value;
              });
            }),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "I have accepted the",
                style: TextStyle(
                  color: Colors.black,
                )),
            TextSpan(
                text: " Terms and Conditions",
                style: TextStyle(
                  color: Color(0xFF01A89A),
                ))
          ]),
        ),
      ],
    );
  }

  Widget _buildSignUpbtn5() {
    return Container(
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.5),
        color: Color(0xFF01A89A),
      ),
      child: Center(
        child: Text(
          "Sign Up",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSignUptxt5() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage5()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already had account? ",
              style: TextStyle(color: Colors.grey, fontSize: 15.90)),
          TextSpan(
              text: "Sign In",
              style: TextStyle(
                  color: Color(0xFF01A89A),
                  fontSize: 15.90,
                  fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("day-5_image.png"), fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 3.0,
                      width: 50.0,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Create an New Account",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                _buildEmailTf(),
                SizedBox(height: 30.0),
                buildUsernameTf5(),
                SizedBox(height: 30.0),
                _buildPwdTf5(),
                SizedBox(height: 30.0),
                _buildTerrmsTxt(),
                SizedBox(height: 30.0),
                _buildSignUpbtn5(),
                SizedBox(height: 25.0),
                _buildSignUptxt5()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
