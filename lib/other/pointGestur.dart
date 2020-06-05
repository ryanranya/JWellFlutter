import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:jwellflutter/day_proder/viewmodel/user_viewmodel.dart';
import 'package:jwellflutter/day_proder/viewmodel/init_provider.dart';
import 'package:jwellflutter/day_proder/viewmodel/viewmodel.dart';

/**
 * 1、创建自己需要共享的数据
 * 2、在应用程序的顶层ChangeNotifierProvider
 * 3、在其他位置使用共享数据
 * provider.of的使用:当provider中的数据发生改变是，它所在的Widget里面的build方法会全部重新调一次
 * Consumer可以拿到provider 里面的属性。(相对推荐)当数据方式改变的时候只会执行Consumer里面传入的build方法会被重新执行
 * Selector：1、Selector方法对原有的数据进行转换，2、shouldRebuild是否需要重新构建
 * */
main() {
//  顶层来包裹他
  runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RYHomePage(),
    );
  }
}

class RYHomePage extends StatefulWidget {
  @override
  _RYHomePageState createState() => _RYHomePageState();
}

class _RYHomePageState extends State<RYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JWell Flutter',
        ),
      ),
      body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              GestureDetector(
                onTapDown: (details){
                  print("outer click");
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
              ),
//            阻止冒泡
              IgnorePointer(
                child: GestureDetector(
                  onTapDown: (details){
                    print("inner click");
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}

class Gesture01 extends StatefulWidget {
  @override
  _Gesture01State createState() => _Gesture01State();
}

class _Gesture01State extends State<Gesture01> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){
        print("手指按下");
        print(details.localPosition);
        print(details.globalPosition);
      },
      onTapCancel: (){
        print("手势取消");
      },
      onTapUp: (details){
        print("手势抬起");
      },
      onTap: (){
        print("手势点击");
      },
      onDoubleTap: (){
        print("双击");
      },
      onLongPress: (){
        print("长按手势");
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
      ),
    );
  }
}


class ListerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (even){
        print("指针按下${even}");
        print(even.position);
        print(even.localPosition);
      },
      onPointerUp: (even){
        print("指针按下${even}");
      },
      onPointerMove: (even){
        print("指针按下${even}");
      },
      onPointerCancel: (even){
        print("指针按下${even}");
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
      ),
    );
  }
}
