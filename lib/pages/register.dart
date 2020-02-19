import 'package:app_name/pages/sesion.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(
        //       LineAwesomeIcons.chevron_circle_left,
        //       color: Colors.indigo[900],
        //       size: 32,
        //     ),
        //    onPressed: null),
        // //shape: CustomShapeBorder(),
        title: Text(
          'Registro',
          style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: 'Simply Rounded',
              fontSize: 32),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
                child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Introduce tus datos',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontFamily: 'Simply Rounded',
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombre',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Correo Electronico',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding:
                          EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
                      splashColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Crear Cuenta",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Simply Rounded',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    child: Container(
                      child: Text(
                        "Ya Tengo una Cuenta",
                        style:
                            TextStyle(fontFamily: 'Simply Rounded', fontSize: 16),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Sesion();
                            },
                          ),
                        );
                    },
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
