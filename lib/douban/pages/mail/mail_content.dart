import 'package:flutter/material.dart';

class RYDBMailPageContent extends StatefulWidget {
  @override
  _RYDBMailPageContentState createState() => _RYDBMailPageContentState();
}

class _RYDBMailPageContentState extends State<RYDBMailPageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "市集内容",
        style: TextStyle(fontSize: 30,color: Colors.green),
      ),
    );
  }
}
