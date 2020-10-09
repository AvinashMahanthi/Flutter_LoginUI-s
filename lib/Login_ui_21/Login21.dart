import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginui/Login_ui_21/Constants21.dart';
import 'package:loginui/Login_ui_21/SignUp21.dart';
import 'package:neumorphic/neumorphic.dart';

class Login21 extends StatefulWidget {
  @override
  _Login21State createState() => _Login21State();
}

class _Login21State extends State<Login21> {
  @override
  Widget build(BuildContext context) {
    final kBoxdecouration = BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Color(0xff6f3d2e).withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10),
        BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20)
      ],
      color: Color(0xffedd3cb),
      borderRadius: BorderRadius.circular(20),
    );

    Widget _buildLikeMsg() {
      return Container(
        padding: EdgeInsets.all(10.0),
        height: 100.0,
        decoration: kBoxdecouration,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      "assets/images/21person.jpg",
                    )),
                border: Border.all(width: 1, color: Colors.grey),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Anne liked your post",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "13 min ago",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(width: 20.0),
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 40.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      );
    }

    Widget _buildFloMsg() {
      return Container(
        padding: EdgeInsets.all(10.0),
        height: 100.0,
        decoration: kBoxdecouration,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      "assets/images/21person.jpg",
                    )),
                border: Border.all(width: 1, color: Colors.grey),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Thomos Followed you",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "15 hrs ago",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(width: 15.0),
            IconButton(
              icon: Icon(
                Icons.group_add,
                size: 40.0,
                color: Colors.brown,
              ),
            )
          ],
        ),
      );
    }

    Widget _buildTagMsg() {
      return Container(
        padding: EdgeInsets.all(10.0),
        height: 100.0,
        decoration: kBoxdecouration,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      "assets/images/21person.jpg",
                    )),
                border: Border.all(width: 1, color: Colors.grey),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Jhon tagged you in a",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "2 days ago",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(width: 15.0),
            IconButton(
              icon: Icon(
                Icons.person_pin,
                size: 40.0,
                color: Colors.brown,
              ),
            )
          ],
        ),
      );
    }

    Widget _buildcomMsg() {
      return Container(
        padding: EdgeInsets.all(10.0),
        height: 100.0,
        decoration: kBoxdecouration,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      "assets/images/21person.jpg",
                    )),
                border: Border.all(width: 1, color: Colors.grey),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Elina Commented on y.",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "3 days ago",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(width: 10.0),
            IconButton(
              icon: Icon(
                Icons.comment,
                size: 40.0,
                color: Colors.brown,
              ),
            )
          ],
        ),
      );
    }

    Widget _buildsharedMsg() {
      return Container(
        padding: EdgeInsets.all(10.0),
        height: 100.0,
        decoration: kBoxdecouration,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      "assets/images/21person.jpg",
                    )),
                border: Border.all(width: 1, color: Colors.grey),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Albert shared a post",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "20 min ago",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(width: 20.0),
            IconButton(
              icon: Icon(
                Icons.image,
                size: 40.0,
                color: Colors.brown,
              ),
            )
          ],
        ),
      );
    }

    Color primaryColor = Color(0xffedd3cb);
    Color darkPrimaryColor = Color(0xff6f3d2e);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 50.0),
              Text(
                "Notifications",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 40.0,
                ),
              ),
              SizedBox(height: 20.0),
              _buildLikeMsg(),
              SizedBox(height: 20.0),
              _buildsharedMsg(),
              SizedBox(height: 30.0),
              _buildFloMsg(),
              SizedBox(height: 20.0),
              _buildTagMsg(),
              SizedBox(height: 20.0),
              _buildcomMsg(),
              SizedBox(height: 20.0),
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Phonebook21()));
                  },
                  child: Text(
                    "See all incoming activity",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              )
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
