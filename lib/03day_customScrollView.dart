import 'dart:math';

import 'package:flutter/cupertino.dart';
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
//      appBar: AppBar(
//        title: Text("JWell Flutter"),
//      ),
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
    return ListView.builder(itemBuilder: (BuildContext ctx, int index) {
      return ListTile(
        title: Text("联系人${index}"),
        leading: Icon(Icons.people),
      );
    });
  }
}

class CustomScrollView003 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello JWell Flutter"),
            background: Image.asset(
              "assets/images/timg.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(0),
          sliver: SliverFixedExtentList(
            itemExtent: 100, //给一个高度
            delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                return Container(
                  child: Text("当前是第${index}ge"),
                  color: Color.fromARGB(255, Random().nextInt(255),
                      Random().nextInt(255), Random().nextInt(255)),
                );
              },
              childCount: 5,
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.5),
          delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
              return Container(
                color: Color.fromARGB(255, Random().nextInt(255),
                    Random().nextInt(255), Random().nextInt(255)),
              );
            },
            childCount: 10,
          ),
        ),
        SliverSafeArea(
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                return ListTile(
                  leading: Icon(Icons.people),
                  title: Text("联系人${index}"),
                );
              },
              childCount: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomScrollView001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
//        可以让内容滚上安全区
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(255),
                        Random().nextInt(255), Random().nextInt(255)),
                  );
                },
                childCount: 20,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}