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
    return ListView.separated(

        itemBuilder: (BuildContext ctx, int index) {
          return Divider(
            color: Colors.orange,
            height: 3,
            thickness: 5,
          );
        },
        separatorBuilder: (BuildContext ctx, int index) {
          return Text("Hello Jwell",style: TextStyle(fontSize: 20),);
        },
        itemCount: 100);
  }
}

class ListView02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemExtent: 60,
      itemBuilder: (BuildContext ctx, int index) {
        return Text(
          "Hello JWell",
          style: TextStyle(fontSize: 20),
        );
      },
    );
  }
}

class ListViewO1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
//      itemExtent: 100,
        children: List.generate(100, (index) {
      return ListTile(
        leading: Icon(Icons.people),
        trailing: Icon(Icons.delete),
        title: Text("联系人${index + 1}"),
        subtitle: Text("联系人电话号码：13452707225"),
      );
    }));
  }
}
