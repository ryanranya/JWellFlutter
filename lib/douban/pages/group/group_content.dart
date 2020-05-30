import 'package:flutter/material.dart';

class RYDBGroupPageContent extends StatefulWidget {
  @override
  _RYDBGroupPageContentState createState() => _RYDBGroupPageContentState();
}

class _RYDBGroupPageContentState extends State<RYDBGroupPageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "小组内容",
        style: TextStyle(fontSize: 30,color: Colors.green),
      ),
    );
  }
}
