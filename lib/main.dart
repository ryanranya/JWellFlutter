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

class RYHomePage extends StatefulWidget {
  @override
  _RYHomePageState createState() => _RYHomePageState();
}

class _RYHomePageState extends State<RYHomePage> {
  //  初始化滚动位置
  ScrollController controller = ScrollController(initialScrollOffset: 100);
  bool isShowFloatButton = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      print("列表滚动了。。。。${controller.offset}");
      setState(() {
        isShowFloatButton = controller.offset >= 1000;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JWell Flutter"),
      ),
      body: RYHomeContent.getcontroller(controller),
      floatingActionButton: isShowFloatButton? FloatingActionButton(
        onPressed: () {
          controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);

        },
        child: Icon(Icons.add),
      ):null,

    );
  }
}


class RYHomeContent extends StatefulWidget {

   ScrollController controller;
   RYHomeContent.getcontroller(this.controller);
  @override
  _RYHomeContentState createState() => _RYHomeContentState();
}

class _RYHomeContentState extends State<RYHomeContent> {

  @override
  @override
  Widget build(BuildContext context) {
    /**
     * 两种监听滚动
     * 1、controller
     * 2、Notic
     * */
    return ListView.builder(
      controller: widget.controller,
        itemBuilder: (BuildContext ctx, int index) {
      return ListTile(
        title: Text("联系人${index}"),
        leading: Icon(Icons.people),
      );
    },
      itemCount: 100,
    );
  }
}
