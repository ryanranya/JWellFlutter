import 'package:flutter/material.dart';

class RYDBHomePageContent extends StatefulWidget {
  @override
  _RYDBHomePageContentState createState() => _RYDBHomePageContentState();
}

class _RYDBHomePageContentState extends State<RYDBHomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "首页内容",
        style: TextStyle(fontSize: 30,color: Colors.green),
      ),
    );
  }
}
