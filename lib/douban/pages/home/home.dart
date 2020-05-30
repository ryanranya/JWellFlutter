
import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/home/home_content.dart';

class RYDBHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: RYDBHomePageContent(),
    );
  }
}
