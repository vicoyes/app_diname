import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:app_name/provaiders/dataProvaider.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
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
           IconButton(icon: Icon(LineAwesomeIcons.search, color: Colors.indigo[900],
              size: 32, ),
              onPressed: () {
               
              })
        ],
      ),
      body: Container(
        child: FutureBuilder(
          future: Name().loadData(),
          builder: (BuildContext context,  AsyncSnapshot snapshot){
            if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text('Carganado')
                  ),
                );
            }
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                 return Column(
                   children: <Widget>[
                     Container(
                       child: ListTile(
                         title: Text(snapshot.data[index].nombre,
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
              }
              );
          } 
        
        )
      ),
    );
  }
}
