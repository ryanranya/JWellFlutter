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
    return item();
  }
}

class item extends StatefulWidget {
  @override
  _itemState createState() => _itemState();
}

class _itemState extends State<item> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("码单"),
            Text(
              "攀枝花钢业集团寄单号阿斯利康黑龙江看哈VB自行车阿开发商的老客户放假卡萨丁",
              textAlign: TextAlign.end,
              maxLines: 5,
            ),
          ],
        )
      ],
    );
  }
}
