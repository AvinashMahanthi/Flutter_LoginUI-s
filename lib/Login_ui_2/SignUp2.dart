import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_1/constants1.dart';
import 'constants2.dart';

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  Widget KbuildSignUpbtn() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      height: 60.0,
      child: FlatButton(
        onPressed: () {},
        child: Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildSIgnIntxt() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Signup2()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "ALready have an account? ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w100),
          ),
          TextSpan(
            text: "SignIn",
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                buildLogo(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Create Your Account",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    kbuildTF("Name"),
                    SizedBox(height: 30.0),
                    kbuildTF("Email Address"),
                    SizedBox(height: 30.0),
                    kbuildPasswordTF(),
                    SizedBox(height: 30.0),
                    Container(
                      height: 60.0,
                      decoration: kBoxDecoration2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "ReEnter Password"),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    KbuildSignUpbtn(),
                    SizedBox(height: 30.0),
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
                        SizedBox(height: 30.0),
                        _buildSIgnIntxt(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
