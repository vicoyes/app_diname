import 'package:app_name/provaiders/service.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:app_name/provaiders/dataProvaider.dart';
import 'dart:async';

import 'detalles.dart';

class Listfilter extends StatefulWidget {
  Listfilter() : super();

  @override
  ListfilterState createState() => ListfilterState();
}

class Retraso {
  final int milesecond;
  VoidCallback action;
  Timer _timer;

  Retraso({this.milesecond});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milesecond), action);
  }
}

class ListfilterState extends State<Listfilter> {
  final _retraso = Retraso(milesecond: 500);
  List<Name> names = List();
  List<Name> filterName = List();

  @override
  void initState() {
    super.initState();
    Service.getName().then((data) {
      setState(() {
        names = data;
        filterName = names;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f2f5),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              LineAwesomeIcons.chevron_circle_left,
              color: Colors.indigo[900],
              size: 32,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Center(
          child: Text(
            'Lista Masculino',
            style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: 'Simply Rounded',
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.pink[100],
            padding: EdgeInsets.all(16),
            child: TextField(
              textAlign: TextAlign.left,
              onChanged: (string) {
                _retraso.run(() {
                  setState(() {
                    filterName = names
                        .where((u) => (u.nombre
                            .toLowerCase()
                            .contains(string.toLowerCase())))
                        .toList();
                  });
                });
              },
              decoration: InputDecoration(
                hintText: 'Buscar',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: new BorderRadius.circular(25.7),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: filterName.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Detalles(nombre:names[index].nombre, origen: names[index].origen, significado: names[index].significado,);
                        },
                      ),
                    );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        title: Text(
                          filterName[index].nombre,
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontFamily: 'Simply Rounded',
                          ),
                        ),
                        leading: Icon(LineAwesomeIcons.heart_o),
                        trailing: Icon(LineAwesomeIcons.angle_right),
                      ),
                    ),
                    Divider()
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
