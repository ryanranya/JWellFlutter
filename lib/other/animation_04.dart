import 'dart:math';

import 'package:flutter/material.dart';

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
        child: AnimatedBuilder(animation: _controller, builder: (ctx, child) {
          return Opacity(
            opacity: _opacityAnim.value,
            child: Transform(
              transform: Matrix4.rotationZ(_radiansAnim.value),
              alignment: Alignment.center,
              child: Container(
                width: _sizeAnim.value,
                height: _sizeAnim.value,

                color: _colorAnim.value,
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_outline),
          onPressed: () {
            if (_controller.isAnimating) {
              _controller.stop();
            } else {
              if (_controller.status == AnimationStatus.forward) {
                _controller.forward();
              } else if (_controller.status == AnimationStatus.reverse) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            }
          }),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
  }
}
/**
 *Animation: 抽象类
 * 监听值改变
 * 监听动画状态的改变
 * value
 * statues
 * 2、AnimationController 继承 Animation
 * vsync: 同步信号(this -> with SingleTickerProviderStateMixin)
 * *forward():向前执行
 * *reverse():反转执行动画
 * 3、CurverAnimation:
 * 作用：设置动画执行的速率(速度曲线)
 * 4、Tween:设置动画执行的value范围
 * *begin：开始值
 * *end：结束值
 * */