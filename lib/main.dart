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
  final imageUrl =
      "https://oimagea7.ydstatic.com/image?id=2223816700015246366&product=adpublish&w=520&h=347";

  @override
  _RYHomeContentState createState() => _RYHomeContentState();
}

class _RYHomeContentState extends State<RYHomeContent> {
  final userNameTextEditController = TextEditingController();
  final passWordTextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: userNameTextEditController,
          decoration: InputDecoration(
//            labelText:"userName",
            icon: Icon(Icons.people),
            border: OutlineInputBorder(),
            hintText: "请输入用户名",
            filled: true,
            fillColor: Colors.orange[100],
          ),
          onChanged: (value) {
            print("onChanged$value");
          },
          onSubmitted: (value) {
            print("onSubmitted$value");
          },
        ),
        TextField(
          controller: passWordTextEditController,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: "请输入密码",
            filled: true,
            fillColor: Colors.orange[100],
            border: OutlineInputBorder(),
          ),
        ),
        Container(
          width: 200,
          height: 50,
          child: FlatButton(
              onPressed: () {
//                获取用户名和密码
              final useName = userNameTextEditController.text;
              final pasWord = passWordTextEditController.text;
              print("账号$useName, 密码$pasWord");

              },
              color: Colors.blue,
              child: Text(
                "登  录",
                style: TextStyle(fontSize: 15,color: Colors.white),
              )),
        )
      ],
    );
  }
}
