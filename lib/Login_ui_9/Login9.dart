import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_9/SignUp9.dart';

class Login9 extends StatefulWidget {
  @override
  _Login9State createState() => _Login9State();
}

class _Login9State extends State<Login9> {
  Widget _buildTxtFieldContainer9() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(196, 135, 198, .3),
                offset: Offset(0, 10),
                blurRadius: 20.0)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username", border: InputBorder.none),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            height: 400.0,
            child: Stack(
              children: [
                Positioned(
                  top: -40,
                  height: 400.0,
                  width: width,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/background1.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  height: 400.0,
                  width: width + 30,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/background-2.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Color.fromRGBO(49, 39, 79, 1)),
                  ),
                  SizedBox(height: 30.0),
                  _buildTxtFieldContainer9(),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Forget password?")],
                  ),
                  SizedBox(height: 30.0),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF131578)),
                        child: Center(
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 30.0),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp9()));
                      },
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Create an account",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.90)),
                      ])),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
