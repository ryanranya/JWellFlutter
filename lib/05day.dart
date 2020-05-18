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
  RYHomePageCountent() {
    print("1、调用RYHomePageCountent的Constructor");
  }

  @override
  _RYHomePageCountentState createState() {
    print("2、调用RYHomePageCountent的CreateState的方法");
    return _RYHomePageCountentState();
  }
}

class _RYHomePageCountentState extends State<RYHomePageCountent> {
  var _counter = 0;

  _RYHomePageCountentState() {
    print("3、调用_RYHomePageCountentState的constructor方法");
  }

  @override
//  这里必须掉super进行初始化
  void initState() {
    // TODO: implement initState
    super.initState();
    print("4、调用initState方法进行初始化操作");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("调用了didChangeDependencies");
  }

  @override
  void didUpdateWidget(RYHomePageCountent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("调用了didUpdateWidget");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("6、销毁方法");
  }

  @override
  Widget build(BuildContext context) {
    print("5、调用build方法");
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              _counter += 1;
            });
          },
          child: Icon(Icons.add),
        ),
        Text("当前点击$_counter"),
      ],
    );
  }
}
