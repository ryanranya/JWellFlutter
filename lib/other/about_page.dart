import 'package:flutter/material.dart';

class RYAboutPage extends StatelessWidget {
  static const String routName = "/other/about";

  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("关于我们"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("111111"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop("about me");
              },
              child: Text(message),
            )
          ],
        ),
      ),
    );
  }
}
