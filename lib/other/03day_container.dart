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
  final userNameTextEditController = TextEditingController();
  final passWordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment(0, 0),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
//        child: Icon(
//          Icons.pan_tool,
//          size: 50,
//        ),
        child: Text("Hello word"),
//  旋转
//      transform: Matrix4.rotationZ(50),
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(10, 10),
                  spreadRadius: 5,
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.blue,
                  offset: Offset(-10, 10),
                  spreadRadius: 5,
                  blurRadius: 10),
            ]),
      ),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "你好JWell Flutter",
            style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
          ),
        ),
        Text(
          "你好JWell Flutter",
          style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
        ),
        SizedBox(height: 10),
        Text(
          "你好JWell Flutter",
          style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
        ),
      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0),
//      alignment: Alignment.topLeft,
      child: Icon(
        Icons.pages,
        size: 77,
      ),
    );
  }
}
