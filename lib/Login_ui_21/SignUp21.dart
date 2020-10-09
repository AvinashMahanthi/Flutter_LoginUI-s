import 'package:flutter/material.dart';
import 'Constants21.dart';

class Phonebook21 extends StatefulWidget {
  @override
  _Phonebook21State createState() => _Phonebook21State();
}

class _Phonebook21State extends State<Phonebook21> {
  @override
  Widget build(BuildContext context) {
    _buildEndBtn() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xff6f3d2e).withOpacity(0.5),
                    offset: Offset(5, 10),
                    spreadRadius: 3,
                    blurRadius: 10),
                BoxShadow(
                    color: Colors.redAccent,
                    offset: Offset(-3, -4),
                    spreadRadius: -2,
                    blurRadius: 20)
              ],
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(40),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call_end,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffedd3cb),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Text(
              "Elon Musk",
              style: TextStyle(
                color: Color(0xff6f3d2e),
                fontWeight: FontWeight.w600,
                fontSize: 40.0,
              ),
            ),
            Text(
              "12:15",
              style: TextStyle(
                color: Color(0xff6f3d2e),
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBtn21(Icons.mic_off, "mute"),
                buildBtn21(Icons.apps, "Keypad"),
                buildBtn21(Icons.volume_up, "Speaker"),
              ],
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBtn21(Icons.add, "add"),
                buildBtn21(Icons.videocam, "Video"),
                buildBtn21(Icons.perm_contact_calendar, "Contacts"),
              ],
            ),
            SizedBox(height: 120.0),
            _buildEndBtn(),
          ],
        ),
      ),
    );
  }
}
