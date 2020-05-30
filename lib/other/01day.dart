//
//import 'package:flutter/material.dart';
////option + enter 快速创建包裹    command + option + B 查看抽象类的实现类
//main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: RYHomePage(),
//    );
//  }
//}
//
//class RYHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("JWell Shop"),
//        backgroundColor: Colors.orange,
//      ),
//      body: RYHomeProduce(),
//    );
//  }
//}
//
//class RYHomeProduce extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//      children: <Widget>[
//        RYHomeProduceItem("电脑", "MacBookAir",
//            "https://pics4.baidu.com/feed/b8014a90f603738d85099b642bd21057f919ec01.jpeg?token=95512b8d8756b8ebb3bb7c36149fad99"),
//        SizedBox(
//          height: 8,
//        ),
//        RYHomeProduceItem("手机", "iPhone",
//            "https://pics4.baidu.com/feed/b8014a90f603738d85099b642bd21057f919ec01.jpeg?token=95512b8d8756b8ebb3bb7c36149fad99"),
//        SizedBox(
//          height: 8,
//        ),
//        RYHomeProduceItem("手表", "iWatch",
//            "https://pics4.baidu.com/feed/b8014a90f603738d85099b642bd21057f919ec01.jpeg?token=95512b8d8756b8ebb3bb7c36149fad99"),
//      ],
//    );
//  }
//}
//
//class RYHomeProduceItem extends StatelessWidget {
//  final String title;
//  final String decs;
//  final String imageUrl;
//  final titleLableStyle = TextStyle(fontSize: 25, color: Colors.orange);
//  final decsLabelStyle = TextStyle(fontSize: 20, color: Colors.blue);
//
//  RYHomeProduceItem(this.title, this.decs, this.imageUrl);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.all(10),
//      decoration: BoxDecoration(
//          border: Border.all(
//            width: 5,
//            color: Colors.purple,
//          )),
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          SizedBox(
//            height: 8,
//          ),
//          Text(
//            title,
//            style: titleLableStyle,
//          ),
//          SizedBox(
//            height: 8,
//          ),
//          Text(
//            decs,
//            style: decsLabelStyle,
//          ),
//          SizedBox(
//            height: 8,
//          ),
//          Image.network(imageUrl)
//        ],
//      ),
//    );
//  }
//}