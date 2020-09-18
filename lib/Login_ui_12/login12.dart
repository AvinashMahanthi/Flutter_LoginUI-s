import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginui/Login_ui_12/SignUp12.dart';
import 'package:loginui/Login_ui_2/constants2.dart';

class Login12 extends StatefulWidget {
  @override
  _Login12State createState() => _Login12State();
}

class _Login12State extends State<Login12> {
  Color facebookColor = Color(0xFF416BC1);
  Color googleColor = Color(0xFFCF4333);
  Color twitterColor = Color(0xFF08A0E9);

  Widget buildTopHeader() {
    return Container(
      height: MediaQuery.of(context).size.height * .30,
      child: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login into\n Your\n Account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            Image(
              height: 170.0,
              image: AssetImage("assets/images/gbimage.png"),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIndexTxt(String txt) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Text(
        txt,
        style: TextStyle(
            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildTF12(String HintTxt, bool Obscure) {
    return Container(
      height: 60.0,
      decoration: raisedDecoration,
      child: Center(
        child: TextField(
          obscureText: Obscure,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: HintTxt,
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      ),
    );
  }

  Widget _buildForgetPassword12() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          print("forget password is pressed");
        },
        child: Text(
          "Forget Password?",
          style: TextStyle(color: Color(0xFF303E9F)),
        ),
      ),
    );
  }

  Widget buildLoginBtn12() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(0xFF303E9F),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildSocMedLogin8() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildSocialbtn(
          () => print('Login with google'),
          AssetImage(
            'assets/images/google.png',
          ),
        ),
        buildSocialbtn(
          () => print('Login with Facebook'),
          AssetImage(
            'assets/images/facebook.png',
          ),
        ),
        buildSocialbtn(
          () => print('Login with Twitter'),
          AssetImage(
            'assets/images/twitter.png',
          ),
        )
      ],
    );
  }

  Widget _buildSignUpTxt12() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp12()));
      },
      child: Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "don't have account , ",
                style: TextStyle(color: Colors.grey, fontSize: 18.0)),
            TextSpan(
                text: "Sign Up now",
                style: TextStyle(color: Color(0xFF3F51B7), fontSize: 18.0))
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F51B7),
      body: Column(
        children: [
          buildTopHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildIndexTxt("Email"),
                    SizedBox(height: 10.0),
                    _buildTF12("Enter your Email", false),
                    SizedBox(height: 10.0),
                    _buildIndexTxt("Password:"),
                    SizedBox(height: 10.0),
                    _buildTF12("**********", true),
                    SizedBox(height: 10.0),
                    _buildForgetPassword12(),
                    SizedBox(height: 15.0),
                    buildLoginBtn12(),
                    SizedBox(height: 30),
                    Center(
                        child: Text("OR",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0))),
                    SizedBox(height: 40.0),
                    _buildSocMedLogin8(),
                    SizedBox(height: 40.0),
                    _buildSignUpTxt12()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

var raisedDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: Colors.grey[50],
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        offset: Offset(5, 2),
        blurRadius: 3.0,
        spreadRadius: 0.0,
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-5, -2),
        blurRadius: 3.0,
        spreadRadius: 0.0,
      ),
    ]);
