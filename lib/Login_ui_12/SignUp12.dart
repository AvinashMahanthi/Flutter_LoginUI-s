import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_12/login12.dart';
import 'package:loginui/Login_ui_2/constants2.dart';

class SignUp12 extends StatefulWidget {
  @override
  _SignUp12State createState() => _SignUp12State();
}

class _SignUp12State extends State<SignUp12> {
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
              "Create\n Your\n Account",
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

  Widget builSignUpBtn12() {
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
            "SignUp",
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
                padding: EdgeInsets.only(left: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40.0),
                      _buildIndexTxt("Email"),
                      SizedBox(height: 8.0),
                      _buildTF12("Enter your Email", false),
                      SizedBox(height: 8.0),
                      _buildIndexTxt("phone Number"),
                      SizedBox(height: 8.0),
                      _buildTF12("Mobile number", false),
                      SizedBox(height: 8.0),
                      _buildIndexTxt("Password:"),
                      SizedBox(height: 8.0),
                      _buildTF12("**********", true),
                      SizedBox(height: 8.0),
                      _buildIndexTxt("Reenter Password:"),
                      SizedBox(height: 8.0),
                      _buildTF12("**********", true),
                      SizedBox(height: 10.0),
                      builSignUpBtn12(),
                      SizedBox(height: 20),
                      Center(
                          child: Text("OR",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 15.0))),
                      SizedBox(height: 20.0),
                      _buildSocMedLogin8(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
