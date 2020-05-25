import 'dart:html';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RYHomePage(),
    );
  }
}

class RYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JWell Flutter"),
      ),
      body: RYHomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton");
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class RYHomeContent extends StatefulWidget {
  @override
  _RYHomeContentState createState() => _RYHomeContentState();
}

class _RYHomeContentState extends State<RYHomeContent> {
  Color selectColor = Colors.blue;
  Color notSelectColor = Colors.white;
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/timg.jpeg",
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: Color.fromARGB(150, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "科比布莱恩特",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isSelect ? selectColor : notSelectColor,
                    ),
                    onPressed: () {
                      setState(() {
                        isSelect = !isSelect;
                      });
                      print(" 点击了按钮");
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/timg.jpeg",
          width: 300,
        ),
        Container(
          width: 100,
          height: 150,
          color: Colors.red,
        ),
        Positioned(
          left: 20,
          bottom: -50,
          child: Text("测试位置"),
        ),
      ],
    );
  }
}

class ExpendDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
//      mainAxisSize: MainAxisSize.min,
      verticalDirection: VerticalDirection.down,
      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        /*
        * Expanded 拉伸占满
        * */
        Expanded(
//          flex: 2,
          child: Container(
            width: 80,
            height: 60,
            color: Colors.orange,
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Expanded(
//          flex: 1,
          child: Container(
            width: 120,
            height: 100,
            color: Colors.red,
            child: Text(
              "word",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
          child: Text(
            "ABC",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.pinkAccent,
          child: Text(
            "CBA",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          Container(
            width: 80,
            height: 60,
            color: Colors.orange,
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.red,
            child: Text(
              "word",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            width: 90,
            height: 80,
            color: Colors.blue,
            child: Text(
              "ABC",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            width: 50,
            height: 120,
            color: Colors.pinkAccent,
            child: Text(
              "CBA",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonRaised extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.add),
          Text("Bug报告"),
        ],
      ),
    );
  }
}
