import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/mail/mail_content.dart';

class RYDBMailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("市集"),
      ),
      body: RYDBMailPageContent(),
    );
  }
}
