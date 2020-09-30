import 'package:flutter/material.dart';

class SignUp15 extends StatefulWidget {
  @override
  _SignUp15State createState() => _SignUp15State();
}

class _SignUp15State extends State<SignUp15> {
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
              child: Image(
                height: Size.height * 0.3,
                width: Size.width,
                image: AssetImage("assets/images/Login!4.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SIgnUp",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "create an account, It's free",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20.0),
                  //InputField("Email", false),
                  SizedBox(height: 20.0),
                  //InputField("Password", false),
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
                  SizedBox(height: 15.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
