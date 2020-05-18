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
    return Container();
  }
}

class TestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "JWell Flutter 文本，积微物联是成都市积微物联开发",
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 1.5,
      style: TextStyle(
        fontSize: 30,
        color: Colors.orange,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        textBaseline: TextBaseline.ideographic,
      ),
    );
  }
}

class RichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
//          text: "JWell Flutter",
        style: TextStyle(color: Colors.orange, fontSize: 30),
        children: [
          TextSpan(
            text: "JWell Flutter",
            style: TextStyle(color: Colors.orange),
          ),
          TextSpan(
            text: " in",
            style: TextStyle(color: Colors.red),
          ),
          TextSpan(
            text: " cheng du",
            style: TextStyle(color: Colors.blue),
          ),
          WidgetSpan(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          TextSpan(
              text: " JWell Flutter", style: TextStyle(color: Colors.orange)),
        ],
      ),
    );
  }
}
