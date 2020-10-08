import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic/neumorphic.dart';

class Login21 extends StatefulWidget {
  @override
  _Login21State createState() => _Login21State();
}

class _Login21State extends State<Login21> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xffedd3cb);
    Color darkPrimaryColor = Color(0xff6f3d2e);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
          child: Column(
        children: [
          Container(
            height: 90,
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NavBarItem(
                  icon: Icons.arrow_back_ios,
                ),
                NavBarItem(
                  icon: Icons.list,
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      )),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xffedd3cb);
    Color darkPrimaryColor = Color(0xff6f3d2e);
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10),
        BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20)
      ], color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        color: darkPrimaryColor,
      ),
    );
  }
}
