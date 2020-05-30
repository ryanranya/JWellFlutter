import 'package:flutter/material.dart';

class RYDBSubjectPageContent extends StatefulWidget {
  @override
  _RYDBSubjectPageContentState createState() => _RYDBSubjectPageContentState();
}

class _RYDBSubjectPageContentState extends State<RYDBSubjectPageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "书音影内容",
        style: TextStyle(fontSize: 30,color: Colors.green),
      ),
    );
  }
}
