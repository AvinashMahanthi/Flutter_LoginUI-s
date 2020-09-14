import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_1/Signup_screen.dart';
import 'package:loginui/Login_ui_1/constants1.dart';

class LoginUI1 extends StatefulWidget {
  @override
  _LoginUI1State createState() => _LoginUI1State();
}

class _LoginUI1State extends State<LoginUI1> {
  bool _rememberME = false;

  Widget _buildRememberMe() {
    return Container(
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              activeColor: Colors.white,
              checkColor: Colors.green,
              value: _rememberME,
              onChanged: (value) {
                setState(() {
                  _rememberME = value;
                });
              },
            ),
          ),
          Text("Remember me", style: klableStyle)
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          elevation: 10.0,
          onPressed: () {
            //Implement login functionality.
          },
          minWidth: 350.0,
          height: 42.0,
          child: Text(
            'LOGIN',
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                letterSpacing: 1.5),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 0.5,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpbtn() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SignUp1()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w100),
          ),
          TextSpan(
            text: "SignUp",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/images/facebook.png',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/images/google.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgetPasswordbtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          print("forget password is pressed");
        },
        child: Text(
          "Forget Password?",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Email", style: klableStyle),
                      SizedBox(height: 10.0),
                      buildEmailTF(),
                      SizedBox(height: 30.0),
                      Text("Password", style: klableStyle),
                      SizedBox(height: 10.0),
                      buildPasswordTF(),
                      _buildForgetPasswordbtn(),
                      _buildRememberMe(),
                      SizedBox(height: 30.0),
                      _buildLoginBtn(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "-OR-",
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white54),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            "Sign in with",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.white54),
                          ),
                          SizedBox(height: 30.0),
                          _buildSocialBtnRow(),
                          _buildSignUpbtn()
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
