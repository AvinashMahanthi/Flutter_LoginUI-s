import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SignUp_5.dart';

class LoginPage5 extends StatefulWidget {
  @override
  _LoginPage5State createState() => _LoginPage5State();
}

class _LoginPage5State extends State<LoginPage5> {
  bool _checkbox = false;

  Widget buildUsernameTf5() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.person_outline)),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 2.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(hintText: "User Name"),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPwdTf5() {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.lock)),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 2.0, right: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildRememberMEbtn() {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: Color(0xFF01A89A),
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

  Widget _buildForgetpwdBtn5() {
    return Padding(
      padding: const EdgeInsets.only(left: 210.0),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "Forget password?",
          style: TextStyle(
            color: Color(0xFF01A89A),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInBtn5() {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Color(0xFF01A89A)),
      child: Center(
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSignUptxt5() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp5()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(color: Colors.grey, fontSize: 15.90)),
          TextSpan(
              text: "Sign Up",
              style: TextStyle(
                  color: Color(0xFF01A89A),
                  fontSize: 15.90,
                  fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("day-5_image.png"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 3.0,
                      width: 50.0,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "to my #Flutter21DaysChallange",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white54),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                buildUsernameTf5(),
                SizedBox(height: 30.0),
                _buildPwdTf5(),
                SizedBox(height: 20.0),
                _buildForgetpwdBtn5(),
                SizedBox(height: 30.0),
                _buildRememberMEbtn(),
                SizedBox(height: 30.0),
                _buildSignInBtn5(),
                SizedBox(height: 30.0),
                _buildSignUptxt5()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
