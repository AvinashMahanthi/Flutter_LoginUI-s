import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants14.dart';

class SignUp14 extends StatefulWidget {
  @override
  _SignUp14State createState() => _SignUp14State();
}

class _SignUp14State extends State<SignUp14> {
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

  Widget _buildSignUpBtn() {
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
            "SignUp",
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  Widget _buildOR() {
    return Row(
      children: <Widget>[
        buildDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        buildDivider(),
      ],
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.grey,
        height: 2.0,
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
          children: [
            Positioned(
              top: 0,
              left: 1,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset("assets/images/signup.svg",
                      height: size.height * 0.35),
                  SizedBox(height: size.height * 0.02),
                  BuildTf14(
                      "User Name",
                      Icon(
                        Icons.person,
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
                  _buildSignUpBtn(),
                  SizedBox(height: size.height * 0.03),
                  _buildOR(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
