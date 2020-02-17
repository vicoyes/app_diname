import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'list.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
            'Inicio',
            style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: 'Simply Rounded',
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Elige una opción',
              style: TextStyle(
                color: Colors.indigo[900],
                fontFamily: 'Simply Rounded',
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return List();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(minWidth: 165),
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.cyan[100],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            LineAwesomeIcons.mars,
                            size: 60,
                            color: Colors.indigo[900],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'El',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontFamily: 'Simply Rounded',
                              fontSize: 22,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(minWidth: 165),
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                       color: Colors.pink[100],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            LineAwesomeIcons.venus,
                            size: 60,
                            color: Colors.indigo[900],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Ella',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontFamily: 'Simply Rounded',
                              fontSize: 22,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print('Funciono');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(minWidth: 165),
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.amber[100],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            LineAwesomeIcons.trophy,
                            size: 60,
                            color: Colors.indigo[900],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Al azar',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontFamily: 'Simply Rounded',
                              fontSize: 22,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(minWidth: 165),
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            LineAwesomeIcons.list,
                            size: 60,
                            color: Colors.indigo[900],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Encuesta',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontFamily: 'Simply Rounded',
                              fontSize: 22,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
