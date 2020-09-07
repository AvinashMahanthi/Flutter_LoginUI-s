import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_2/SignUp2.dart';
import 'constants2.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  Widget _buildSIgnUPtxt() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Signup2()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w100),
          ),
          TextSpan(
            text: "SignUp",
            style: TextStyle(
                color: Colors.black,
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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  buildLogo(),
                  SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Login to your Account",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 30.0),
                      kbuildTF("Enter your Email"),
                      SizedBox(height: 30.0),
                      kbuildPasswordTF(),
                      SizedBox(height: 30.0),
                      KbuildSignInbtn(),
                      SizedBox(height: 40.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Or Sign In with",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 50.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              buildSocialbtn(
                                () => print('Login with google'),
                                AssetImage(
                                  'google.png',
                                ),
                              ),
                              buildSocialbtn(
                                () => print('Login with Facebook'),
                                AssetImage(
                                  'facebook.png',
                                ),
                              ),
                              buildSocialbtn(
                                () => print('Login with Twitter'),
                                AssetImage(
                                  'twitter.png',
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 50.0),
                          _buildSIgnUPtxt(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
