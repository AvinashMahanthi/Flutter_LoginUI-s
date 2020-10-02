import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Signup17 extends StatefulWidget {
  @override
  _Signup17State createState() => _Signup17State();
}

class _Signup17State extends State<Signup17> {
  Widget _buildTextField(String text, bool abscure) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Color(0xFF6C63FE), width: 1.2),
              ),
            ),
            obscureText: abscure,
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already a member",
              style: TextStyle(
                color: Colors.grey,
              )),
          TextSpan(
              text: "SignIn",
              style: TextStyle(
                color: Color(0xFF6C63FE),
              ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220.0,
              child: SvgPicture.asset("assets/images/Group1.svg"),
            ),
            SizedBox(height: 30.0),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30.0),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            _buildTextField("Username", false),
                            SizedBox(height: 15.0),
                            _buildTextField("phone number", true),
                            SizedBox(height: 15.0),
                            _buildTextField("Email Address", false),
                            SizedBox(height: 20.0),
                            _buildTextField("Password", true),
                            SizedBox(height: 40.0),
                            Container(
                              height: 53.0,
                              width: MediaQuery.of(context).size.width * .75,
                              decoration: BoxDecoration(
                                  color: Color(0xFF6C63FE),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "SignIn",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            _buildSignUpTxt(),
                          ],
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
    ;
  }
}
