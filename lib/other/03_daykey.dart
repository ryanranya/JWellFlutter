import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:jwellflutter/api/http_request.dart';

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
  final List<String> names = ["aaaa", "bbbb", "ccccc"];

  final GlobalKey<_RYHomeContentsState> homeKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "作业任务",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RYHomeContents(key: homeKey),
//      ListView(
//        children: names.map((item) {
////          return ListItemFul(item, key: ValueKey(item));
////        给一个随机的key
//          return ListItemFul(item, key: UniqueKey());
//        }).toList(),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            names.removeAt(0);
//          });
//        },
//        child: Icon(Icons.delete),
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(homeKey.currentState.message);
          print(homeKey.currentState.widget.name);
          homeKey.currentState.test();
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}

//class ListItemLess extends StatelessWidget {
//  final name;
//
//  final Color randColor = Color.fromARGB(
//      255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
//
//  ListItemLess(this.name);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: randColor,
//      child: Text(name),
//      height: 90,
//    );
//  }
//}

class ListItemFul extends StatefulWidget {
  final name;

  ListItemFul(this.name, {Key key}) : super(key: key);

  @override
  _ListItemFulState createState() => _ListItemFulState();
}

class _ListItemFulState extends State<ListItemFul> {
  final Color randColor = Color.fromARGB(
      255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: randColor,
      child: Text(widget.name),
      height: 90,
    );
  }
}

class RYHomeContents extends StatefulWidget {
  final String name = "coderRY";
  RYHomeContents({Key key}): super(key: key);
  @override
  _RYHomeContentsState createState() => _RYHomeContentsState();
}

class _RYHomeContentsState extends State<RYHomeContents> {
  final String message = "123";
  void test(){
    print("testtesttest");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        message,
      ),
    );
  }
}