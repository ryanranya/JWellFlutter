import 'package:flutter/material.dart';

main() =>runApp(MyApp());

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
      body: RYHomePageCountent(),
    );
  }
}

class RYHomePageCountent extends StatefulWidget {
  @override
  _RYHomePageCountentState createState() => _RYHomePageCountentState();
}

class _RYHomePageCountentState extends State<RYHomePageCountent> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




