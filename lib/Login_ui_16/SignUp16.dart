import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SignUp16 extends StatefulWidget {
  @override
  _SignUp16State createState() => _SignUp16State();
}

class _SignUp16State extends State<SignUp16> {
  final kboxDecouration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFF6E4BAF),
        const Color(0xFF523EA4),
        const Color(0xFF513DA3)
      ], // whitish to gray
    ),
  );

  Widget _buildSignInBtn16() {
    final Size = MediaQuery.of(context).size;
    return Container(
      width: Size.width * .75,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xFF6E4BAF),
              const Color(0xFF523EA4),
              const Color(0xFF513DA3)
            ], // whitish to gray
          ),
          borderRadius: BorderRadius.circular(19.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black, blurRadius: 1.5, offset: Offset(0, 3))
          ]),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          "SignUp",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
    );
  }

  Widget _buildSocbtn(child) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
          child: child),
    );
  }

  Widget _buildTxtfld16() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Your Email",
              prefixIcon: Icon(
                Icons.mail_outline,
                color: Colors.white,
              ),
              hintStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(
              hintText: "User Name",
              prefixIcon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              hintStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(height: 20.0),
        TextField(
          decoration: InputDecoration(
              hintText: "Your Password",
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintStyle: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E4BAF),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: Size.height,
        width: Size.width,
        decoration: kboxDecouration,
        child: Stack(
          children: [
            Positioned(
              top: 100.0,
              child: Image(
                image: AssetImage("assets/images/white_buildings.png"),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Your's Destination is\nour Destiny",
                      style: TextStyle(
                          fontSize: 36.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          color: Colors.white),
                    ),
                    SizedBox(height: 180.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            "Create your account",
                            style: TextStyle(
                                fontSize: 36.0,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 20.0),
                          _buildTxtfld16(),
                          SizedBox(height: 50.0),
                          _buildSignInBtn16(),
                          SizedBox(height: 30.0),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Or Register with",
                                  style: TextStyle(
                                    letterSpacing: 1.2,
                                    color: CupertinoColors.systemGrey,
                                  ),
                                ),
                                _buildSocbtn(
                                  SvgPicture.asset(
                                    "assets/images/facebook.svg",
                                    height: 20,
                                    color: CupertinoColors.white,
                                    width: 20,
                                  ),
                                ),
                                _buildSocbtn(
                                  SvgPicture.asset(
                                    "assets/images/google-plus.svg",
                                    height: 20,
                                    color: CupertinoColors.white,
                                    width: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
