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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          child: Text("RaisedButton"),
          textColor: Colors.red,
          onPressed: () {
            print("click RaisedButton");
          },
        ),
        FlatButton(
          onPressed: () {
            print("FlatButton");
          },
          child: Text("FLatButton"),
        ),
        OutlineButton(
          onPressed: () {
            print("OutlineButton");
          },
          child: Text("OutlineButton"),
        ),
//        FloatingActionButton(onPressed: () {
//          print("click FloatingActionButton");
//        }),
//      自定义Button
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: Colors.orange,
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.face,
                color: Colors.red,
              ),
              Text("关注积微"),
            ],
          ),
        ),
      ],
    );
  }
}