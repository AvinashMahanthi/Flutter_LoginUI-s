import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_2/constants2.dart';
import 'package:loginui/Login_ui_8/SignUp8.dart';

class Login8 extends StatefulWidget {
  @override
  _Login8State createState() => _Login8State();
}

class _Login8State extends State<Login8> {
  Widget _buildSocMedLogin8() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildSocialbtn(
          () => print('Login with google'),
          AssetImage(
            'google.png',
          ),
        ),
        buildSocialbtn(
          () => print('Login with Facebook'),
          AssetImage(
            'facebook.png',
          ),
        ),
        buildSocialbtn(
          () => print('Login with Twitter'),
          AssetImage(
            'twitter.png',
          ),
        )
      ],
    );
  }

  Widget _buildTxtFields8() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Email", prefixIcon: Icon(Icons.mail_outline)),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Password", prefixIcon: Icon(Icons.lock)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                color: Colors.indigo,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 250.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 2),
                                blurRadius: 15.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 10.0),
                              _buildTxtFields8(),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [Text("Forget password?")],
                              ),
                              SizedBox(height: 30.0),
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp8()));
                                },
                                child: Container(
                                    height: 50.0,
                                    width: 250.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: Color(0xFF131578)),
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                    )),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 130.0,
                                      height: 2.0,
                                      child: Container(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(" OR "),
                                    SizedBox(
                                      width: 135.0,
                                      height: 2.0,
                                      child: Container(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text("Login with "),
                              SizedBox(height: 20.0),
                              _buildSocMedLogin8()
                            ],
                          ),
                        ),
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
