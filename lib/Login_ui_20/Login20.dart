import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginui/Login_ui_20/SignUp20.dart';

class Login20 extends StatefulWidget {
  final _checkbox = false;
  @override
  _Login20State createState() => _Login20State();
}

class _Login20State extends State<Login20> {
  bool _checkbox = false;
  Widget kbuildTF(String HintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          )
        ],
      ),
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

  Widget _buildLoginBtn11() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(colors: [
              Color(0xFF22BEBE),
              Colors.greenAccent,
              Color(0xFF22BEBE),
            ])),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      ),
    );
  }

  Widget _buildRememberMEbtn() {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: Color(0xFF22BEBE),
          value: _checkbox,
          onChanged: (value) {
            setState(() {
              _checkbox = value;
            });
          },
        ),
        SizedBox(width: 5.0),
        Text(
          "Remember me",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
        )
      ],
    );
  }

  Widget _buildFbBtn() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF22BEBE),
            Colors.greenAccent,
            Color(0xFF22BEBE),
          ]),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                      image:
                          AssetImage("assets/images/768px-Facebook_icon.png")),
                  SizedBox(width: 10.0),
                  Text(
                    "Connect with facebook",
                    style: TextStyle(color: Colors.blue, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp20()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Iam a new User.",
              style: TextStyle(
                color: Colors.grey,
              )),
          TextSpan(
              text: "SignUp",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF22BEBE),
              ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22BEBE),
      appBar: AppBar(
        backgroundColor: Color(0xFF22BEBE),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hola,\nUnicorn here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35.0,
                ),
              ),
              SvgPicture.asset(
                "assets/images/undraw_unicorn_dp2f.svg",
                height: 150.0,
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 100.0),
                  kbuildTF("Email"),
                  SizedBox(height: 30.0),
                  kbuildTF("Password"),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('forgot password?')],
                  ),
                  SizedBox(height: 10.0),
                  _buildRememberMEbtn(),
                  SizedBox(height: 30.0),
                  _buildLoginBtn11(),
                  SizedBox(height: 20.0),
                  _buildFbBtn(),
                  SizedBox(height: 30.0),
                  _buildSignUpTxt(),
                  SizedBox(height: 73.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
