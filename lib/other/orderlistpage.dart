import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text(
          "作业任务",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RYHomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
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
    return Container(
      color: Colors.black12,
      child: ListView.builder(
        itemBuilder: (BuildContext cts, int index) {
          return orderlistitem();
        },
        itemCount: 30,
      ),
    );
  }
}

class orderlistitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 18, top: 18),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/typeicon.png",
                      width: 32,
                      height: 10,
                    ),
                    Positioned(
                      left: 6,
                      child: Text(
                        "西昌钢钒",
                        style: TextStyle(fontSize: 6),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 18),
                child: Text(
                  "SC1901010001",
                  style: TextStyle(fontSize: 12, color: Colors.black38),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 18),
                child: Image.asset(
                  "assets/images/ping.png",
                  width: 16,
                  height: 16,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 18, top: 18),
                  child: Text(
                    "状态",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 12, color: Colors.lightBlue),
                  ),
                ),
              )
            ],
          ),
          Divider(),
          messageLabel.getData(
              "车辆信息:", "川D12345 / 吊车-180吨", "assets/images/carmessage.png"),
          messageLabel.getData("工作内容:", "2高炉处理主沟弯钩", "assets/images/CYXX.png"),
          messageLabel.getData("用车单位:", "炼钢厂", "assets/images/counter.png"),
          messageLabel.getData(
              "使用时长:", "2台班 + 1.5台班", "assets/images/counteuntil.png"),
          messageLabel.getData(
              "联系人:", "老刘/18883771053", "assets/images/cardown.png"),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 110,
                padding: EdgeInsets.only(left: 18, bottom: 18, top: 10),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "循环次数:",
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    TextSpan(
                      text: "1",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    TextSpan(
                      text: "/7",
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ]),
                ),
              ),
              functionButton.getButtondata("详情", Colors.black),
              functionButton.getButtondata("运单二维码", Colors.black),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: functionButton.getButtondata("开始运输", Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class functionButton extends StatelessWidget {
  final String title;
  final Color buttonColor;

  functionButton.getButtondata(this.title, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 40,
      height: 30,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          print("点击了按钮");
        },
        color: buttonColor,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}

class messageLabel extends StatelessWidget {
  final String title;
  final String count;
  final String imagepath;
  final TextStyle textStyle = TextStyle(fontSize: 15, color: Colors.black38);

  messageLabel.getData(this.title, this.count, this.imagepath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 9, 20, 9),
        child: Row(
          children: <Widget>[
            Image.asset(imagepath),
            Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  title,
                  style: textStyle,
                )),
            Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  count,
                  style: textStyle,
                )),
          ],
        ),
      ),
    );
  }
}
