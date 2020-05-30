import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/subject/subject_content.dart';

class RYDBSubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书音影"),
      ),
      body: RYDBSubjectPageContent(),
    );
  }
}
