import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/profile/profile_content.dart';

class RYDBProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: RYDBProfilePageContent(),
    );
  }
}
