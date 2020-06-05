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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RYProderShowData01(),
            RYProderShowData02(),
            RYProvideShowData03(),
            RYProvideShowData04(),
          ],
        ),
      ),
//      这里的类型可以做转换
//      floatingActionButton: Selector<RYConterViewModel, RYConterViewModel>(
//        selector: (context, counterVM) => counterVM,
////        是否需要重新构建， fase 不需要
//        shouldRebuild: (prev, next) => false,
//        builder: (context, counterVM, child) {
//          return FloatingActionButton(
//            child: child,
//            onPressed: () {
//              counterVM.conter += 1;
//            },
//          );
//        },
//        child: Icon(Icons.add),
//      ),
      floatingActionButton: Selector6<RYConterViewModel, RYUserViewModel,RYConterViewModel,RYUserViewModel,RYConterViewModel,RYConterViewModel,RYConterViewModel>(
        shouldRebuild:(provider,next) => false,
        builder: (context,conterVM, child){
          return FloatingActionButton(
              child: child,
              onPressed: (){
                conterVM.conter += 1;
              });
        },
        selector: (context,conterVM0,userinfoVM0,conterVM1,userinfo1,conterVM2,userinfo2) => RYConterViewModel(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class RYProderShowData01 extends StatefulWidget {
  @override
  _RYProderShowData01State createState() => _RYProderShowData01State();
}

class _RYProderShowData01State extends State<RYProderShowData01> {
  @override
  Widget build(BuildContext context) {
//    使用共享数据
    int conter = Provider.of<RYConterViewModel>(context).conter;
    return Card(
      color: Colors.orange,
      child: Text(
        "当前计数：${conter}",
      ),
    );
  }
}

class RYProderShowData02 extends StatefulWidget {
  @override
  _RYProderShowData02State createState() => _RYProderShowData02State();
}

class _RYProderShowData02State extends State<RYProderShowData02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Consumer<RYConterViewModel>(
        child: Text("测试这个text"),
        builder: (context, conterVM, child) {
          return Text("当前计数:${conterVM.conter}");
//        return child;
        },
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print("生命周期销毁");
  }
}

class RYProvideShowData03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<RYUserViewModel>(
      builder: (context, userInfoVM, child){
        return Text(
          "nickName${userInfoVM.user.nickName}",
        );
      },
    );
  }
}

class RYProvideShowData04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<RYUserViewModel, RYConterViewModel>(
      builder: (context, userInfoVM, ConterVM, child){
        return Text(
          "nickName${userInfoVM.user.nickName},conter${ConterVM.conter}",
        );
      },
    );
  }
}

class RYProvideShowData05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer3<RYUserViewModel, RYConterViewModel, RYUserViewModel>(
      builder: (context, userInfoVM, ConterVM, userInfoVM1,child){
        return Text(
          "nickName${userInfoVM.user.nickName},conter${ConterVM.conter},useInfo${userInfoVM1.user.imageUrl}",
        );
      },
    );
  }
}