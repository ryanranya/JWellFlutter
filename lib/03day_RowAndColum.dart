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
          width: 290,
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