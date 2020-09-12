import 'package:flutter/material.dart';
import 'constants.dart';

class SignUp7 extends StatefulWidget {
  @override
  _SignUp7State createState() => _SignUp7State();
}

class _SignUp7State extends State<SignUp7> {
  bool radio = true;
  Widget _buildSignUptxt() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello again,",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Get on board",
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildtxtFd() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          )),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.white30, fontSize: 25.0)),
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          )),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.white30, fontSize: 25.0)),
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          )),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white30, fontSize: 25.0)),
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          )),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Conform Password",
                hintStyle: TextStyle(color: Colors.white30, fontSize: 25.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildTerrmsTxt() {
    return Row(
      children: <Widget>[
        Radio(
            value: radio,
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
                  color: Colors.white54,
                )),
            TextSpan(
                text: " Terms and Conditions",
                style: TextStyle(
                  color: Colors.white54,
                ))
          ]),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFF22244E),
      body: Column(
        children: [
          BuildDesign(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                _buildSignUptxt(),
                SizedBox(height: 30.0),
                Container(
                  child: Column(
                    children: [
                      _buildtxtFd(),
                      SizedBox(height: 20.0),
                      _buildTerrmsTxt(),
                      SizedBox(height: 50.0),
                      Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFFA132BD)),
                        child: Center(
                            child: Text("SIgn Up",
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
