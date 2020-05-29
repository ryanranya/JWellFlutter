import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RYHomePage(),
    );
  }
}

class RYHomePage extends StatefulWidget {
  @override
  _RYHomePageState createState() => _RYHomePageState();
}

class _RYHomePageState extends State<RYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text(
          "作业任务",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RYHomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class RYHomeContent extends StatefulWidget {
  @override
  _RYHomeContentState createState() => _RYHomeContentState();
}

class _RYHomeContentState extends State<RYHomeContent> {

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
