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
        body: RYHomePageCountent(),
    );
  }
}

////StatelessWidget 的生命周期
//class RYHomePageCountent extends StatelessWidget {
//
//  final String message;
//
//  RYHomePageCountent(this.message){
//    print("构造函数被调用")
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    print("调用BuildContentext方法");
//    return Container();
//  }
//}

//StatefulWidget生命周期
class RYHomePageCountent extends StatefulWidget {
  @override
  _RYHomePageCountentState createState() => _RYHomePageCountentState();
}

class _RYHomePageCountentState extends State<RYHomePageCountent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "当前计数:$_counter",
            style: TextStyle(fontSize: 30, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
