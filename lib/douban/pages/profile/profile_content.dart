import 'package:flutter/material.dart';

class RYDBProfilePageContent extends StatefulWidget {
  @override
  _RYDBProfilePageContentState createState() => _RYDBProfilePageContentState();
}

class _RYDBProfilePageContentState extends State<RYDBProfilePageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "我的内容",
        style: TextStyle(fontSize: 30,color: Colors.green),
      ),
    );
  }
}
