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
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1),
        lowerBound: 0.0,
        upperBound: 1.0);

//    2、设置Curve的值
    animation = CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);

//    3、tween
    animation = Tween(begin: 50.0,end: 150.0).animate(animation);
    //3、监听值的改变
    _controller.addListener(() {
      setState(() {

      });
    });
//    4、监听动画状态改变
  _controller.addStatusListener((status) {
    if (status == AnimationStatus.completed){
      _controller.reverse();
    }else if(status == AnimationStatus.dismissed){
      _controller.forward();
    }
  });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: animation.value,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_outline),
          onPressed: (){
            if (_controller.isAnimating){
              _controller.stop();
            }else{
              if(_controller.status == AnimationStatus.forward){
                _controller.forward();
              }else if(_controller.status == AnimationStatus.reverse){
                _controller.reverse();
              }else{
                _controller.forward();
              }
            }
          }),
    );
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