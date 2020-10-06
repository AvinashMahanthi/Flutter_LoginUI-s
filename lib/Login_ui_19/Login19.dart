import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_19/Signup19.dart';

class Login19 extends StatefulWidget {
  @override
  _Login19State createState() => _Login19State();
}

class _Login19State extends State<Login19> {
  bool _checkbox = false;
  Widget _buildTextField(String text, bool abscure) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 15.0),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.grey, width: 1.2),
              ),
            ),
            obscureText: abscure,
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpbtn() {
    final Size = MediaQuery.of(context).size;
    return Container(
      height: 50.0,
      width: Size.width,
      decoration: BoxDecoration(
        color: Color(0xFF0041C4),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          "SignIn",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpTxt() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp19()));
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
                color: Color(0xFF0041C4),
              ))
        ]),
      ),
    );
  }

  Widget _buildRememberMEbtn() {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: Color(0xFF0041C4),
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

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF0041C4),
      ),
      backgroundColor: Color(0xFF0041C4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Text(
            "   Sign In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(20.0),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Hello there, sign in to continue",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 40.0),
                _buildTextField("Username or email", false),
                SizedBox(height: 20.0),
                _buildTextField("Password", true),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("forget password?")],
                ),
                SizedBox(height: 20.0),
                _buildRememberMEbtn(),
                SizedBox(height: 20.0),
                _buildSignUpbtn(),
                SizedBox(height: 197.0),
                Center(
                  child: _buildSignUpTxt(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
