
import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/group/group_content.dart';

class RYDBGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小组"),
      ),
      body: RYDBGroupPageContent(),
    );
  }
}
