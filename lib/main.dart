import 'package:flutter/material.dart';
import 'package:jwellflutter/other/menu_01.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),

      home: Scaffold(
        appBar: AppBar(
          title: Text("menu"),
        ),
        body: Text(
          "test"
        ),
      ),
    );
  }
}