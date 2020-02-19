import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Detalles extends StatefulWidget {
  final String nombre;
  final String origen;
  final String significado;

  Detalles({this.nombre, this.origen, this.significado});

  @override
  _DetallesState createState() => _DetallesState();
}

class _DetallesState extends State<Detalles> {
  FlutterTts flutterTts = FlutterTts();
  bool _like = true;
  List <String> like = [];

  Future _speak(nombre) async {
    await flutterTts.setLanguage('es-ES');
    await flutterTts.speak(nombre);
    // if (result == 1) setState(() => ttsState = TtsState.playing);
  }

  // agregar like

  agregandolike(){
    
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
            'Detalles del Nombre',
            style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: 'Simply Rounded',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 32, bottom: 32, right: 8),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.53,
                      child: Text(
                        this.widget.nombre,
                        style: TextStyle(
                            color: Colors.indigo[900],
                            fontFamily: 'Simply Rounded',
                            fontSize: 28),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              LineAwesomeIcons.paper_plane,
                              color: Colors.indigo[900],
                              size: 28,
                            ),
                            onPressed: null),
                      ],
                    ),
                    IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          LineAwesomeIcons.volume_up,
                          color: Colors.indigo[900],
                          size: 28,
                        ),
                        onPressed: () => _speak(this.widget.nombre)),
                    Container(
                      child: IconButton(
                          padding: EdgeInsets.all(0),
                          icon: (_like
                              ? Icon(
                                  LineAwesomeIcons.heart_o,
                                  size: 28,
                                  color: Colors.indigo[900],
                                )
                              : Icon(
                                  LineAwesomeIcons.heart,
                                  size: 28,
                                  color: Colors.indigo[900],
                                )),
                          onPressed: () {
                            setState(() {
                              if (_like) {
                                _like = false;
                              } else {
                                _like = true;
                              }
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.pink[100],
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfff0f2f5),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Significado',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontFamily: 'Simply Rounded',
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 16, left: 12, right: 12),
                      child: Text(
                        this.widget.significado,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Origen',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontFamily: 'Simply Rounded',
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          '${this.widget.origen}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
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
