import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_15/Login15.dart';

class SignUp15 extends StatefulWidget {
  @override
  _SignUp15State createState() => _SignUp15State();
}

class _SignUp15State extends State<SignUp15> {
  Widget InputField(String text, bool abscruetext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(height: 5.0),
        TextField(
          obscureText: abscruetext,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login15()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already have an account?",
              style: TextStyle(
                color: Colors.grey,
              )),
          TextSpan(
              text: "Login",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image(
              height: Size.height * 0.3,
              width: Size.width,
              image: AssetImage("assets/images/signup14.png"),
            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Create an account, It's free",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20.0),
                  InputField("Email", false),
                  SizedBox(height: 20.0),
                  InputField("Password", false),
                  SizedBox(height: 20.0),
                  InputField("Conform Password", false),
                  SizedBox(height: 50.0),
                  Container(
                    width: Size.width * .80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF69F0AE),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  _buildLoginTxt(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
