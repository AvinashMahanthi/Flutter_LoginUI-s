import 'package:flutter/material.dart';

final kBoxDecoration2 = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    )
  ],
);

Widget kbuildPasswordTF() {
  return Container(
    height: 60.0,
    decoration: kBoxDecoration2,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: "Enter Password"),
      ),
    ),
  );
}

Widget kbuildTF(String HintText) {
  return Container(
    decoration: kBoxDecoration2,
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

Widget KbuildSignInbtn() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(10.0),
    ),
    width: double.infinity,
    height: 60.0,
    child: FlatButton(
      onPressed: () {},
      child: Text(
        "Sign In",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildSocialbtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 3),
              blurRadius: 0.7,
            )
          ],
          image: DecorationImage(
            image: logo,
          )),
    ),
  );
}

Widget buildLogo() {
  return Container(
    height: 150.0,
    width: 150.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ],
      image: DecorationImage(
        image: AssetImage(
          'Ui-2-Logo.jpg',
        ),
      ),
    ),
  );
}
