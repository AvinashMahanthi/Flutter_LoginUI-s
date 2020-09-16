import 'package:flutter/material.dart';
import 'package:loginui/Login_ui_1/Login_screen.dart';
import 'package:loginui/Login_ui_10/Login_10.dart';
import 'package:loginui/Login_ui_3/Login3.dart';
import 'package:loginui/Login_ui_5/LoginPage5.dart';
import 'package:loginui/Login_ui_6/LoginPage_6.dart';
import 'package:loginui/Login_ui_7/Login_page_7.dart';
import 'package:loginui/Login_ui_8/Login8.dart';
import 'package:loginui/Login_ui_9/Login9.dart';
import 'Login_ui_4/Login4.dart';
import 'Login_ui_2/Login2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter UI kit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login10()));
              },
              child: Text("1st page"),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// MaterialApp(
// title: 'Title',
// theme: kThemeData,
// home: HomePage(),
// );
