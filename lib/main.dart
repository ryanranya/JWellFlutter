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
      body: RYHomePageCountent("你好呀,JWellFlutter！！！",1),
    );
  }
}

class RYHomePageCountent extends StatefulWidget {

    final String message;
    final int age;

  RYHomePageCountent(this.message, this.age);
  RYHomePageCountent.thisJwellFlutter(this.message,{this.age});
  RYHomePageCountent.thisIsJWellFlutter(this.message): this.age = 10{
    print(this.age);
  }
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
         _getButtons(),
          Text("当前计数:$_counter"),
          Text("传递过来的参数是：${widget.message},JWellFlutter is ${widget.age}"),
        ],
      ),
    );
  }

  Widget _getButtons(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Icon(Icons.add),
            color: Colors.orange,
            onPressed: () {
              setState(() {
                _counter += 1;
              });
            }),
        RaisedButton(
            child: Icon(Icons.remove),
            color: Colors.blue,
            onPressed: () {
              setState(() {
                _counter -= 1;
              });
            }),
      ],
    );
  }
}
