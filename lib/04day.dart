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
<<<<<<< HEAD
      body: Text("123123"),
=======
      body: RYHomePageCountent(),
    );
  }
}

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
          _getButtons(),
          Text("当前计数:$_counter")
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
>>>>>>> origin/master
    );
  }
}
