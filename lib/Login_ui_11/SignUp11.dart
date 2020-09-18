import 'package:flutter/material.dart';

class SignUp11 extends StatefulWidget {
  @override
  _SignUp11State createState() => _SignUp11State();
}

class _SignUp11State extends State<SignUp11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            HeaderBackgrond(),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  kbuildTF("Email"),
                  SizedBox(height: 20.0),
                  kbuildTF("Phone number"),
                  SizedBox(height: 20.0),
                  kbuildPasswordTF(),
                  SizedBox(height: 10.0),
                  SizedBox(height: 20.0),
                  _buildSignUpBtn11(),
                  SizedBox(height: 30.0),
                  _buildSignUpTxt11(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildSignUpTxt11() {
  return GestureDetector(
    onTap: () {},
    child: Center(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already an user, ",
              style: TextStyle(color: Colors.grey, fontSize: 20.0)),
          TextSpan(
              text: "Sign In",
              style: TextStyle(color: Colors.purple, fontSize: 20.0))
        ]),
      ),
    ),
  );
}

class HeaderBackgrond extends StatefulWidget {
  @override
  _HeaderBackgrondState createState() => _HeaderBackgrondState();
}

class _HeaderBackgrondState extends State<HeaderBackgrond> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            margin: EdgeInsets.only(top: 5),
            height: 450,
            color: Colors.white,
          ),
        ),
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            height: 450,
            decoration: BoxDecoration(color: Colors.purple),
          ),
        ),
        Positioned(
          top: 380.0,
          left: 20.0,
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        Positioned(
          top: 200.0,
          left: 20.0,
          child: Text(
            "Welcome back",
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ],
    );
    ;
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(sw, 0);
    path.lineTo(sw, sh);
    path.cubicTo(sw, sh * 0.7, 0, sh * 0.8, 0, sh * 0.55);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget kbuildPasswordTF() {
  return Container(
    height: 60.0,
    decoration: kBoxDecoration2,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: "Enter Password"),
      ),
    ),
  );
}

final kBoxDecoration2 = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    )
  ],
);

Widget kbuildTF(String HintText) {
  return Container(
    decoration: kBoxDecoration2,
    height: 60.0,
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: HintText,
        ),
      ),
    ),
  );
}

Widget _buildSignUpBtn11() {
  return FlatButton(
    onPressed: () {},
    child: Container(
      width: double.infinity,
      height: 55.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(colors: [
            Colors.pink,
            Colors.purple,
          ])),
      child: Center(
        child: Text(
          "SignUp",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    ),
  );
}
