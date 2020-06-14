import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jwellflutter/other/animation_04page.dart';
import 'package:jwellflutter/other/animation_05.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: RYAnHome(),
    );
  }
}

class RYAnHome extends StatefulWidget {
  @override
  _RYAnHomeState createState() => _RYAnHomeState();
}

class _RYAnHomeState extends State<RYAnHome>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  Animation _sizeAnim;
  Animation _colorAnim;
  Animation _opacityAnim;
  Animation _radiansAnim;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

//    2、设置Curve的值
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);
//    3、tween
    _animation = Tween(begin: 50.0, end: 150.0).animate(_animation);

//    3。1创建size的tween
    _sizeAnim = Tween(begin: 10.0, end: 200.0).animate(_controller);
//    3。2创建color的tween
    _colorAnim =
        ColorTween(begin: Colors.red, end: Colors.purple).animate(_controller);
//    3。3创建opacity的tween
    _opacityAnim = Tween(begin: 0.0, end: 1.0).animate(_controller);
//    3。4创建radiams的tween
    _radiansAnim = Tween(begin: 0.0, end: 2 * pi).animate(_controller);
    //    //3、监听值的改变
    _controller.addListener(() {
      setState(() {});
    });
//    4、监听动画状态改变
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    /**
     * 1。大小动画
     * 2、颜色动画
     * 3、透明动画
     * */
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
          child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 16 / 9,
        ),
        children: List.generate(20, (index) {
          final imageURL = "https://picsum.photos/500/500?random=${index}";
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (ctx, anm1, aim2) {
                    return FadeTransition(
                      opacity: anm1,
                      child: RYImageDetail(imageURL),
                    );
                  },
                ),
              );
            },
            child: Hero(
              tag: imageURL,
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.pool),
          onPressed: () {
//            模态推送页面
//            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
//              return RYAnimationModelPage();
//            },
////              iOS 模态推送出来
//              fullscreenDialog: true,
//            ));

//          自定义转出动画
            Navigator.of(context).push(PageRouteBuilder(
                transitionDuration: Duration(seconds: 3),
                pageBuilder: (ctx, anm1, anm2) {
                  return FadeTransition(
                      opacity: anm1, child: RYAnimationModelPage());
                }));
          }),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
  }
}
