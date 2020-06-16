import 'dart:html';

import 'package:flutter/material.dart';
import 'package:jwellflutter/other/menu_01.dart';
import 'package:jwellflutter/other/size_fit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
//    1、
  print("${RYSizeFit.screenHeight}");
    return MaterialApp(
      title: "flutter title",
      theme: ThemeData(
//
        primarySwatch: Colors.blue,
//          导航和TabBar的颜色
        primaryColor: Colors.amberAccent,
//          单独设置一些东西的颜色
        accentColor: Colors.green,

        brightness: Brightness.dark,
//          某些widget的主题
        textTheme: TextTheme(

        ),

      ),
      darkTheme: ThemeData(

      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("menu"),
          ),
          body: ListView(
            children: <Widget>[
              Text('qweqwe',style: Theme.of(context).textTheme.bodyText2,),
              ButtonTheme(),
            ],
          )),
    );
  }
}