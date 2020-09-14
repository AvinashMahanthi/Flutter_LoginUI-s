import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_4/SignUp4.dart';

class SignUp4 extends StatefulWidget {
  @override
  _SignUp4State createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  Widget _buildSignUpTxt4() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 70.0),
          Text(
            "Creat Account,",
            style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Sign Up to get Started!",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
        ],
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
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildSignUpTxt4(),
                SizedBox(height: 70.0),
                TextField(
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
                          borderSide:
                              BorderSide(color: Color(0xFFE45141), width: 2.0)),
                      labelText: "Full Name",
                      labelStyle:
                          TextStyle(color: Colors.grey, fontSize: 18.0)),
                ),
                SizedBox(height: 15.0),
                TextField(
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
                          borderSide:
                              BorderSide(color: Color(0xFFE45141), width: 2.0)),
                      labelText: "Email Id",
                      labelStyle:
                          TextStyle(color: Colors.grey, fontSize: 18.0)),
                ),
                SizedBox(height: 15.0),
                TextField(
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
                      borderSide:
                          BorderSide(color: Color(0xFFE45141), width: 2.0),
                    ),
                    labelText: "password",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                FlatButton(
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
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                FlatButton(
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
                                  image: AssetImage(
                                      "assets/images/768px-Facebook_icon.png")),
                              SizedBox(width: 10.0),
                              Text(
                                "Sign Up with facebook",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I'am already a member, ",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20.0)),
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                                color: Color(0xFFE45141), fontSize: 20.0))
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
