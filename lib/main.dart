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
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "123123",
              style: TextStyle(fontSize: 30, color: Colors.orange),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "XH12233213123123123213123123213",
                  style: TextStyle(fontSize: 35, color: Colors.lightBlue),
                  maxLines: 3,
                ),
              ),
            ),
          ],
        ),
        JWellButton(),
      ],
    );
  }
}

class JWellButton extends StatefulWidget {
  @override
  _JWellButtonState createState() => _JWellButtonState();
}

class _JWellButtonState extends State<JWellButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onPressed: () {
        print("Click JWellButton");
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.add,
            color: Colors.red,
          ),
          Text("JWellButton"),
        ],
      ),
    );
  }
}
