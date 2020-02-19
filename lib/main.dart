import 'package:app_name/pages/login.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Diname",
      theme: ThemeData(
        primaryColor: Colors.pink[100],
        accentColor: Colors.pink[400],
      ),
      home: Login()
    );
  }

}