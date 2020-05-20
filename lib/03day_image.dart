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
    return ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(imageUrl),
          fit: BoxFit.contain,
          repeat: ImageRepeat.repeatY,
          width: 200,
          height: 200,
//      alignment: Alignment.center,
          alignment: Alignment(0, -1),
        ),
        Image(
          image: AssetImage("assets/images/timg.jpeg"),
        ),
        //    占位图片 FadeInImage
//    图片缓存：1000张，100M最大的缓存
        FadeInImage(
//      fadeInDuration: Duration(milliseconds: 1),
//      fadeOutDuration: Duration(milliseconds: 1),
          placeholder: AssetImage("assets/images/timg.jpeg"),
          image: NetworkImage(imageUrl),
        ),
        //    字体图标和图片资源
        //  字体图标是矢量图，放大不会失真,可以设置颜色，图标很多时占据的空间更小

        Icon(
          Icons.pets,
          size: 400,
          color: Colors.blue,
        ),
      ],
    );
  }
}
