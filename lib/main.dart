import 'package:app_name/pages/favorito.dart';
import 'package:app_name/pages/home.dart';
import 'package:app_name/pages/setting.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _childrem = [
    Home(),
    Favoritos(),
    Setting()
  ];

  final List<String> _name = [
    'Inicio',
     'Favoritos',
     'Ajuste'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Diname",
      theme: ThemeData(
        primaryColor: Colors.pink[100],
        accentColor: Colors.pink[400],
      ),
      home: Scaffold(
        backgroundColor: Color(0xfff0f2f5),
        appBar: AppBar(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
          ),
          title: Center(
            child: Text(
              _name[_currentIndex],
              style: TextStyle(
                color: Colors.indigo[900],
                fontFamily: 'Simply Rounded',
              ),
            ),
          ),
        ),
        body: _childrem[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTapTappep,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.home),
              title: Text('Inicio'),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.thumbs_up),
              title: Text('Favoritos'),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.question_circle),
              title: Text('Ajuste'),
            ),
          ],
        ),
      ),
    );
  }

  void onTapTappep(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
