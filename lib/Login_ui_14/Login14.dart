import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginui/Login_ui_14/constants14.dart';
import 'package:loginui/Login_ui_14/SignUp14.dart';

class Login14 extends StatefulWidget {
  @override
  _Login14State createState() => _Login14State();
}

class _Login14State extends State<Login14> {
  Widget BuildTf14(String text, Icon icon) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      decoration: BoxDecoration(
          color: KPrimaryLightColor, borderRadius: BorderRadius.circular(29.0)),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      height: MediaQuery.of(context).size.height * .055,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.0),
        color: kPrimaryColor,
      ),
      child: FlatButton(
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp14()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.grey,
              )),
          TextSpan(
              text: "SignUp",
              style: TextStyle(
                color: kPrimaryColor,
              ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.25,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/images/login.svg",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height * 0.03),
                BuildTf14(
                    "Email",
                    Icon(
                      Icons.perm_identity,
                      color: kPrimaryColor,
                    )),
                SizedBox(height: size.height * 0.02),
                BuildTf14(
                    "Password",
                    Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    )),
                SizedBox(height: size.height * 0.03),
                _buildLoginBtn(),
                SizedBox(height: size.height * 0.04),
                _buildSignUpTxt(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
