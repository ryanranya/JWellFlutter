import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,splashColor: Colors.transparent
      ),
      home: RYAnHome(),
    );
  }
}

class RYAnHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /**
     *Animation: 抽象类
     * 监听值改变
     * 监听动画状态的改变
     * value
     * statues
     * 2、AnimationController 集成 Animation
     * */


    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Text('Hello Word'),
      ),
    );
  }
}

