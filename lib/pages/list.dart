import 'package:app_name/provaiders/service.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:app_name/provaiders/dataProvaider.dart';
import 'dart:async';

class Listfilter extends StatefulWidget {
  Listfilter() : super();

  @override
  ListfilterState createState() => ListfilterState();
}

class ListfilterState extends State<Listfilter> {
  List<Name> names = List();

  @override
  void initState() {
    super.initState();
    Service.getName().then((data) {
      setState(() {
        names = data;
      });
    });
  }

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
        actions: <Widget>[
          IconButton(
              icon: Icon(
                LineAwesomeIcons.search,
                color: Colors.indigo[900],
                size: 32,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index){
                 return Column(
                   children: <Widget>[
                     Container(
                       child: ListTile(
                         title: Text(names[index].nombre,
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
                 );
              },
            )
          ),
        ],
      ),
    );
  }
}

//  Column(
//                         children: <Widget>[
//                           Container(
//                             child: ListTile(
//                               title: Text(
//                                 snapdata[index].nombre,
//                                 style: TextStyle(
//                                   color: Colors.indigo[900],
//                                   fontFamily: 'Simply Rounded',
//                                 ),
//                               ),
//                               leading: Icon(LineAwesomeIcons.heart_o),
//                               trailing: Icon(LineAwesomeIcons.angle_right),
//                             ),
//                           ),
//                           Divider()
//                         ],
//                       );
