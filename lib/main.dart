import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

const PrimaryColor = const Color(0xFFfcba03);
//color for the appbar

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var theme = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Aja"),
          backgroundColor: theme,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: theme[50],
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: theme[100],
                      )),
                  Flexible(flex: 1, child: Container(color: theme[200]))
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                  color: theme[300],
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          theme = Colors.primaries[
                              Random().nextInt(Colors.primaries.length)];
                        });
                      },
                      child: Text("Tukar Warna"),
                    ),
                  )),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: theme[400],
              ),
            )
          ],
        ),
      ),
    );
  }
}
