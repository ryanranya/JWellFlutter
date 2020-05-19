import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RYHomePage(),
    );
  }
}

class RYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JWell Flutter"),
      ),
      body: RYHomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton");
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class RYHomeContent extends StatefulWidget {
  @override
  _RYHomeContentState createState() => _RYHomeContentState();
}

class _RYHomeContentState extends State<RYHomeContent> {
  final imageUrl =
      "https://oimagea7.ydstatic.com/image?id=2223816700015246366&product=adpublish&w=520&h=347";

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageUrl),
      fit: BoxFit.contain,
      repeat: ImageRepeat.repeatY,
      width: 200,
      height: 200,
//      alignment: Alignment.center,
    alignment: Alignment(0, -1),
    );
  }
}


