import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    LogApp(),
  );
}

class LogApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.red, Colors.black],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'ReVerbs',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Akronim',
                        fontSize: 70),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    maxLength: 10,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white70,
                        size: 35,
                      ),
                      hoverColor: Colors.deepPurpleAccent,
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.normal),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLength: 7,
                    style: TextStyle(color: Colors.white70),
                    cursorColor: Colors.white,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white70,
                          size: 35,
                        ),
                        hintStyle: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                        hoverColor: Colors.amber,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Password please...'),
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
