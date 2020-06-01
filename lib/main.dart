import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

//自定这个样一个类， 继承于 InheritedWidget 需要实现抽象方法
class RYConterWidget extends InheritedWidget {
//  1、共享的数据
  final int counter;
//  2、定义构造方法
  RYConterWidget({this.counter, Widget child}): super(child: child);

//  3、获取组最近的InheritedWIdget
  static RYConterWidget of(BuildContext context) {
//    沿着Element树，去寻找最近的RYConterWidgetElement，从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

//  决定要不要回调State中的didChangeDependencies
//  如果返回时true 会触发 didChangeDependencies 这个方法
  @override
  bool updateShouldNotify(RYConterWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.counter != counter;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RYHomePage(),
    );
  }
}

class RYHomePage extends StatefulWidget {
  @override
  _RYHomePageState createState() => _RYHomePageState();
}

class _RYHomePageState extends State<RYHomePage> {
  int _conter = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JWell Flutter',
        ),
      ),
      body: RYConterWidget(
        counter: _conter,
        child: Column(
          children: <Widget>[
            RYShowData01(),
            RYShowData02(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _conter += 1;
        });
      },
      child: Icon(Icons.add),
      ),
    );
  }
}

class RYShowData01 extends StatefulWidget {

  @override
  _RYShowData01State createState() => _RYShowData01State();
}

class _RYShowData01State extends State<RYShowData01> {

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("执行了didChangeDependencies方法");
  }

  @override
  Widget build(BuildContext context) {
    int conter = RYConterWidget.of(context).counter;
    return Card(
      color: Colors.orange,
      child: Text(
        "当前计数：${conter}",
      ),
    );
  }
}

class RYShowData02 extends StatefulWidget {
  @override
  _RYShowData02State createState() => _RYShowData02State();
}

class _RYShowData02State extends State<RYShowData02> {
  @override
  Widget build(BuildContext context) {
    int conter = RYConterWidget.of(context).counter;
    return Container(
      color: Colors.blue,
      child: Text("当前计数:${conter}"),
    );
  }
}


