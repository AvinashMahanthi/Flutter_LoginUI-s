import 'package:flutter/material.dart';

final kboxDecouration3 = BoxDecoration(
  border: Border(bottom: BorderSide(color: Colors.grey[200])),
);

Widget buildLoginBtn3() {
  return FlatButton(
    child: Container(
      height: 60.0,
      width: 250.0,
      decoration: BoxDecoration(
        color: Colors.orange[600],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget buildEmailTF3() {
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey[200])),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Email or phone number",
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

Widget BuildPwdTF3() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none),
    ),
  );
}

Widget buildSignUpBtn3() {
  return FlatButton(
    child: Container(
      height: 60.0,
      width: 250.0,
      decoration: BoxDecoration(
        color: Colors.orange[600],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          "SignUp",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget bulildSocialmediaRow() {
  return Row(
    children: <Widget>[
      Expanded(
        child: FlatButton(
          onPressed: () {},
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
            child: Center(
              child: Text(
                "facebook",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 30.0),
      Expanded(
        child: FlatButton(
          onPressed: () {},
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20.0)),
            child: Center(
              child: Text(
                "Github",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
