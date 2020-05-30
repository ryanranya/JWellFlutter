import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/main/main.dart';
import 'package:jwellflutter/douban/widget/dashed_line.dart';
import 'package:jwellflutter/douban/widget/star_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JWell Flutter",
      theme: ThemeData(
        primarySwatch: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: RYMainPage(),
    );
  }
}
