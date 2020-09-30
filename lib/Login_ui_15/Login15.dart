import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_15/SignUp15.dart';

class Login15 extends StatefulWidget {
  @override
  _Login15State createState() => _Login15State();
}

class _Login15State extends State<Login15> {
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

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp15()));
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
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              child: Container(
                height: Size.height * 0.3,
                width: Size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/Login!4.png"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Login to your account",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20.0),
                  InputField("Email", false),
                  SizedBox(height: 20.0),
                  InputField("Password", false),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget password?"),
                    ],
                  ),
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
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  _buildSignUpTxt()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
