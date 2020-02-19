import 'package:app_name/pages/register.dart';
import 'package:app_name/pages/sesion.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        //shape: CustomShapeBorder(),
        title: Text(
          'Diname',
          style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: 'Simply Rounded',
              fontSize: 32),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Los nombres son una parte esencial de la identidad.',
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Simply Rounded',
                    color: Colors.indigo[900]),
              ),
              SizedBox(
                height: 128,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  color: Colors.indigo[900],
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Register();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Registrarme",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Simply Rounded',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
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
                    "Registrase con Google",
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
    );
  }
}

